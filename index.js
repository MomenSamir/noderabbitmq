const port = 3000;
const request = require('request');

var express = require('express'),
    app = express();
var bodyParser = require('body-parser');

var amqp = require('amqplib/callback_api');

var mysql = require('mysql');

var con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'mysql',
	database: "nodedb"
});

con.connect(function(err) {
  if (err) {
    return console.error('error: ' + err.message);
  }
  console.log('Connected to the MySQL server.'); 
});

app.use(express.static(__dirname + '/public'));

app.use(bodyParser.urlencoded({
   extended: false
}));

app.use(bodyParser.json());

app.get('/', function(req, res){
  res.render('form');// if jade
  // You should use one of line depending on type of frontend you are with
   res.sendFile(__dirname + '/form.html'); //if html file is root directory
   res.sendFile("index.html"); //if html file is within public directory
});

app.post('/',function(req,res){
   var useremail = req.body.useremail;
   var username = req.body.username;
   var userphone = req.body.userphone;

   var htmlData = 'Hello:' + username + ' your email: ' + useremail + ' Your Phone: ' + userphone ;
   res.send(htmlData);
   console.log(htmlData);
   
   /*
	var sql = "INSERT INTO users (email, name , phone) VALUES ('"+useremail+"', '"+username+"', '"+userphone+"')";
    con.query(sql, function (err, result) {
		if (err) throw err;
		console.log("1 record inserted");
	});
	*/
	
	amqp.connect('amqp://localhost:5672', function(error0, connection) {
    if (error0) {
        throw error0;
    }
		connection.createChannel(function(error1, channel) {
			if (error1) {
				throw error1;
			}

			var queue = 'hello';
			//var msg = 'Hello World!';
			var msg = JSON.stringify(req.body)

			channel.assertQueue(queue, {
				durable: false
			});
			channel.sendToQueue(queue, Buffer.from(msg));

			console.log(" [xSend] Sent %s", msg);
		});

	});

	/*
	const options = {
		url: 'http://localhost/nodeApi/index.php',
		json: true,
		body: {
			email: useremail,
			name: username,
			phone: userphone
		}
	};

	request.post(options, (err, res, body) => {
		if (err) {
			return console.log(err);
		}
		console.log(`Status: ${res.statusCode}`);
		console.log(body);
	});
	*/
});
app.listen(port);


