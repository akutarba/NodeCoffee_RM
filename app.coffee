http = require 'http'
server = http.createServer (request, response) ->
  request.addListener 'end', ->
  response.writeHead 200, {'Content-Type': 'text/plain'}
  response.write 'Hello Coffee!'
  response.end()
server.listen 8000
console.log('Server running at http://localhost:8000/')