var webpack = require('webpack')
var path = require('path')

module.exports = {
    entry: "./app/main/main.js",
    output: {
        path: path.resolve(__dirname, "build"),
        publicPath: "/public/",
        filename: "bundle.js"
    },
    plugins: [
      new webpack.optimize.OccurenceOrderPlugin(),
      new webpack.ProvidePlugin({ riot: 'riot' })
    ],
    module: {
      preLoaders: [
        { test: /\.tag$/, exclude: /node_modules/, loader: 'riotjs-loader', query: { type: 'none' } }
      ],
      loaders: [
        { test: /\.js$|\.tag$/, exclude: /node_modules/, loader: 'babel-loader', query: { presets: ['es2015'] } }
      ]
      /*loaders: [
        { test: /\.tag$/, exclude: /node_modules/, loader: 'riotjs-loader' },
        { test: /\.js$/, exclude: /node_modules/, loader: 'babel-loader' },
      ]*/
    },
    devServer: {
      contentBase: './app'
    }
};
