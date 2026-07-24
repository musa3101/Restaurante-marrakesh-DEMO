import http.server
import os
import sys

PORT = 3000

class CleanURLHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        # Extract path without query parameters or hash
        clean_path = self.path.split('?')[0].split('#')[0]
        
        # If requesting a route without an extension (like /menu or /nosotros)
        if clean_path != '/' and not os.path.extsep in os.path.basename(clean_path):
            translated = self.translate_path(clean_path)
            # If path doesn't exist directly but path.html exists, append .html
            if not os.path.exists(translated) and os.path.exists(translated + '.html'):
                suffix = self.path[len(clean_path):]
                self.path = clean_path + '.html' + suffix

        return super().do_GET()

if __name__ == '__main__':
    # Use ThreadingHTTPServer to handle multiple concurrent requests smoothly without blocking Chrome
    class ThreadingServer(http.server.ThreadingHTTPServer):
        allow_reuse_address = True
        daemon_threads = True

    try:
        httpd = ThreadingServer(("", PORT), CleanURLHandler)
        print(f"🚀 Servidor Tacos Marrakech activo en http://localhost:{PORT}")
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nServidor detenido.")
        sys.exit(0)
