const { environment } = require('@rails/webpacker')

const webpack = require('webpack');

// Preventing Babel from transpiling NodeModules packages
environment.loaders.delete('nodeModules');
// Bootstrap 4 has a dependency over jQuery & Popper.js:
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
  })
);
environment.plugins.prepend('Provide',
  new webpack.DefinePlugin({
    'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV || 'development')
  }),
);
module.exports = environment
