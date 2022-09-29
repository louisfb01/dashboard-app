module.exports = {
  "transpileDependencies": [
    "vuetify"
  ],
  devServer: {
    port: process.env.VUE_APP_CODA_DASHBOARD_PORT,
    https: true,
    disableHostCheck: true
  }
}
