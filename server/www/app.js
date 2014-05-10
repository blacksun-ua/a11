var express = require('express');

var app = express();


app.use(require('body-parser')());
app.use(require('method-override')());
app.use(require('serve-favicon')(__dirname + '/public/images/favicon.ico'));
//app.use('views engine', 'jade');

app.get('*', function(req, res) { 
    res.send('Hello World!/n/n');
});

module.exports = {
    listen : function(conf, handler) {
        app.listen(conf.port, conf.host, handler);
    }
};
