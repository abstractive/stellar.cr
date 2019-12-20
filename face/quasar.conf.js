// https://quasar.dev/quasar-cli/quasar-conf-js

module.exports = function (ctx) {
  return {
    // https://quasar.dev/quasar-cli/cli-documentation/boot-files
    boot: [
      'i18n',
      'axios',
      'lodash',
      'stellar'
    ],
    // https://quasar.dev/quasar-cli/quasar-conf-js#Property%3A-css
    css: [
      'app.sass'
    ],
    // https://github.com/quasarframework/quasar/tree/dev/extras
    extras: [
      'roboto-font',
      'fontawesome-v5'
    ],

    // https://quasar.dev/quasar-cli/quasar-conf-js#Property%3A-framework
    framework: {
      iconSet: 'fontawesome-v5',
      all: 'auto',  //de Auto-import; otherwise: true / false
      components: [],
      directives: [
        //de 'Ripple',
        'ClosePopup'
      ],
      plugins: [
        'Notify',
        'Dialog'
      ]
    },
    supportIE: false,
    // https://quasar.dev/quasar-cli/quasar-conf-js#Property%3A-build
    build: {
      distDir: '../build/',
      scopeHoisting: true,
      // vueRouterMode: 'history',
      // showProgress: false,
      // gzip: true,
      // analyze: true,
      // preloadChunks: false,
      // extractCSS: false,
      gzip: true,
      // https://quasar.dev/quasar-cli/cli-documentation/handling-webpack
      extendWebpack (cfg) {
        cfg.module.rules.push({
          enforce: 'pre',
          test: /\.(js|vue)$/,
          loader: 'eslint-loader',
          exclude: /node_modules/,
          options: {
            formatter: require('eslint').CLIEngine.getFormatter('stylish')
          }
        })
      },
    },
    // https://quasar.dev/quasar-cli/quasar-conf-js#Property%3A-devServer
    devServer: {
      // https: true,
      // port: 8080,
      open: false // opens browser window automatically
    },
    // animations: 'all', // --- includes all animations
    // https://quasar.dev/options/animations
    animations: [
      'fadeIn',
      'fadeOut',
      'slideInLeft',
      'slideInRight'
    ],
    // https://quasar.dev/quasar-cli/developing-ssr/configuring-ssr
    ssr: {
      pwa: false
    },
    // https://quasar.dev/quasar-cli/developing-pwa/configuring-pwa
    pwa: {
      // workboxPluginMode: 'InjectManifest',
      // workboxOptions: {}, // only for NON InjectManifest
      manifest: {
        name: 'Stellar',
        short_name: 'stellar',
        description: 'Artillery+Quasar',
        display: 'standalone',
        orientation: 'portrait',
        background_color: '#e1e1e1',
        theme_color: '#CC342D'
      }
    },
    // https://quasar.dev/quasar-cli/developing-cordova-apps/configuring-cordova
    cordova: {
      id: 'org.delimiter.abstractive.stellar'
    },
    // https://quasar.dev/quasar-cli/developing-capacitor-apps/configuring-capacitor
    capacitor: {
      // hideSplashscreen: false
    },
    // https://quasar.dev/quasar-cli/developing-electron-apps/configuring-electron
    electron: {
      // bundler: 'builder', // or 'packager'
      packager: {
        // https://github.com/electron-userland/electron-packager/blob/master/docs/api.md#options

        // OS X / Mac App Store
        // appBundleId: '',
        // appCategoryType: '',
        // osxSign: '',
        // protocol: 'myapp://path',

        // Windows only
        // win32metadata: { ... }
      },

      builder: {
        // https://www.electron.build/configuration/configuration

        // appId: 'stellar'
      },

      // keep in sync with /src-electron/main-process/electron-main
      // > BrowserWindow > webPreferences > nodeIntegration
      // More info: https://quasar.dev/quasar-cli/developing-electron-apps/node-integration
      nodeIntegration: true,

      extendWebpack (cfg) {
        // do something with Electron main process Webpack cfg
        // chainWebpack also available besides this extendWebpack
      }
    }
  }
}
