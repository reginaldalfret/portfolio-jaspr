import http.server
import socketserver
import os

PORT = 8091
DIRECTORY = os.path.join(os.path.dirname(__file__), 'build', 'jaspr')

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

    def end_headers(self):
        self.send_header('Access-Control-Allow-Origin', '*')
        super().end_headers()

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Jaspr serving at http://127.0.0.1:{PORT}")
    httpd.serve_forever()
