var webpack = require('webpack')

module.exports = {
    context: __dirname + "/web/js",
    entry: "./main",
    output: {
        path: __dirname + "/web/dist",
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
    }
}
