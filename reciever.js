var amqp = require('amqplib/callback_api');
const request = require('request');

amqp.connect('amqp://localhost', function(error0, connection) {
    if (error0) {
        throw error0;
    }
    connection.createChannel(function(error1, channel) {
        if (error1) {
            throw error1;
        }

        var queue = 'hello';

        channel.assertQueue(queue, {
            durable: false
        });

        console.log(" [*] Waiting for messages in %s. To exit press CTRL+C", queue);

        channel.consume(queue, function(msg) {
			const editmsg = JSON.parse(msg.content.toString())
			
			console.log(editmsg.username);
			console.log(editmsg['useremail']);
			console.log(editmsg['userphone']);
			const options = {
				url: 'http://localhost/nodeApi/index.php',
				json: true,
				body: {
					email: editmsg.useremail,
					name: editmsg.username,
					phone: editmsg.userphone
				}
			};

			
			request.post(options, (err, res, body) => {
				if (err) {
					return console.log(err);
				}
				console.log(`Status: ${res.statusCode}`);
				console.log(body);
			});
			
	
            console.log(" [xRecieve] Received %s", JSON.parse(msg.content.toString()));
        }, {
            noAck: true
        });
    });
});