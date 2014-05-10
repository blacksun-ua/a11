var server  = require('app')
  , conf    = require(process.env.CONF);

server.listen(conf, function() { 
    console.log("Server started on %s port", server.port);
});
