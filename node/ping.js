'use strict';

const handler = (event, context, callback) => {

  return callback(null, {
    statusCode: 200,
    body: JSON.stringify({ pong: 'node' })
  });

};


module.exports.handler = handler