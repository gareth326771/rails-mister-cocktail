const { environment } = require('@rails/webpacker')

module.exports = environment

module.exports = environmentconst webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery'
  })
)
module.exports = environment
