module.exports = {
  // See http://brunch.io for documentation.
  paths: {
    public: 'public/assets',
    watched: [
      'app/assets',
      'lib/assets',
      'vendor/assets'
    ]
  },

  files: {
    javascripts: {joinTo: '/application.js'},
    stylesheets: {joinTo: '/application.css'},
    templates: {joinTo: '/application.js'}
  },

  modules: {
    autoRequire: {
      'application.js': ['application']
    },

    nameCleaner: function(path) {
      rx = /^.*\/assets\/\w*\/(.*)\./g
      arr = rx.exec(path);
      return arr ? arr[1] : path
    }
  },

  conventions: {
    // TODO fonts would need to be added here
    assets: /images[\\/]/
  },

  plugins: {
    hashbrunch: {
      assetFolder: "app/assets/images"
    }
  }
}
