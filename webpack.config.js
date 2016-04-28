var webpack = require('webpack')

module.exports = {
  context: __dirname + "/web",
  entry: "./js/main",
  output: {
    path: __dirname + "/priv/static",
    filename: "bundle.js"
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: "babel",
        query: {
            presets: ['es2015', 'react']
        }
      }
    ]
  },
  watchOptions: {
    ignore: /node_modules/
  },
  resolve: {
    alias: {
      bee: __dirname + "/web/js"
    }
  }
}
