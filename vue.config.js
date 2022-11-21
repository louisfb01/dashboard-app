const webpack = require('webpack')

module.exports = {
  "transpileDependencies": [
    "vuetify"
  ],
  devServer: {
    port: process.env.CODA_DASHBOARD_APP_PORT,
    https: true,
    disableHostCheck: true
  },
  configureWebpack: {
    plugins: [
      new webpack.DefinePlugin({
        // allow access to process.env from within the vue app with the special VUE_APP_ prefix
        'process.env': {
          VUE_APP_CODA_DASHBOARD_APP_AUTH_REALM: JSON.stringify(process.env.CODA_DASHBOARD_APP_AUTH_REALM),
          VUE_APP_CODA_DASHBOARD_APP_AUTH_CLIENT_ID: JSON.stringify(process.env.CODA_DASHBOARD_APP_AUTH_CLIENT_ID),
          VUE_APP_CODA_AUTH_SERVICE_URL: JSON.stringify(process.env.CODA_AUTH_SERVICE_URL),
          VUE_APP_CODA_DASHBOARD_APP_PORT: JSON.stringify(process.env.CODA_DASHBOARD_APP_PORT),
          VUE_APP_CODA_DASHBOARD_API_URL: JSON.stringify(process.env.CODA_DASHBOARD_API_URL),
        }
      })
    ]
  }
}