pushserve = require('pushserve');

config = {
  noLog: true,
  path: 'public', // 'public/assets
  base: '',
  port: 3333,
  run: true,
  hostname: 'localhost',
  indexPath: '404.html', // use rails' default 404 page
  startupLogging: true,
  noPushState: false,
  noCors: false,
  stripSlashes: false,
  config: {},
}

module.exports = function(port, path, callback) {
  return pushserve(config, callback);
}
