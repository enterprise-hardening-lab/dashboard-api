from http.server import BaseHTTPRequestHandler, HTTPServer

class HelloHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/plain")
        self.end_headers()
        self.wfile.write(b"Hello from Hardened Dashboard API")

if __name__ == "__main__":
    server = HTTPServer(("", 8080), HelloHandler)
    print("🚀 Running Dashboard API on port 8080")
    server.serve_forever()
