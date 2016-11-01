pushserve = require('pushserve');

module.exports = function(port, path, callback) {
  config = {
    noLog: true,
    path: 'public', // 'public/assets
    base: '',
    port: port,
    run: true,
    hostname: 'localhost',
    indexPath: '404.html', // use rails' default 404 page
    startupLogging: true,
    noPushState: false,
    noCors: false,
    stripSlashes: false,
    config: {},
  }

  return pushserve(config, callback);
}
