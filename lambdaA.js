const AWS = require('aws-sdk');

const lambda = new AWS.Lambda({
  apiVersion: '2015-03-31',
  endpoint: 'http://172.17.0.1:3001', // docker0 network adapter ip
  sslEnabled: false
});


exports.handler = (event, context, callback) => {
    lambda.invoke({
        FunctionName: 'LambdaB'
    }, (err, res) => {
        console.log(res);
        console.log(err);
    });
    callback(null, {
        statusCode: 200,
        body: "hello world from lambdaA"
    });
}
