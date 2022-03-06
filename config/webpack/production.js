process.env.NODE_ENV = process.env.NODE_ENV || 'production'

const environment = require('./environment')
new webpack.DefinePlugin({
  'process.env': {
    'NODE_ENV': JSON.stringify('production')
  }
})
module.exports = environment.toWebpackConfig()
