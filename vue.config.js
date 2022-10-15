module.exports = {
  "transpileDependencies": [
    "vuetify"
  ],
  devServer: {
    port: process.env.CODA_DASHBOARD_APP_PORT,
    https: true,
    disableHostCheck: true
  }
}
