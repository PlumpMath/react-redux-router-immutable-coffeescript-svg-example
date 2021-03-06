c = -> console.log.apply console, arguments
_ = require 'lodash'
express = require 'express'
app = express()
body_parser = require 'body-parser'
path = require 'path'
public_dir = __dirname + '/build'



app.get '/', (req, res) ->
    res.sendFile(path.join(public_dir, "/dev_index.html"))



app.use(body_parser.json())

app.use(express.static(public_dir))


app.listen 3001, 'localhost', ->
    c 'server listening on 3001'
