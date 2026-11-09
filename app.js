const http = require('http');
const port = process.env.PORT || 80;
http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/html' });
  res.end('<h1>Hello from CI/CD pipeline v1</h1><p>Built by CodeBuild, deployed by CodePipeline to EC2</p>');
}).listen(port);
