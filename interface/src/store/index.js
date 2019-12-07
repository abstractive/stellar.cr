import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

/*
export default function () {
  const Store = new Vuex.Store({
    modules: {
      // example
    },

    // enable strict mode (adds overhead!)
    // for dev mode only
    strict: process.env.DEV
  })

  return Store
}
*/

export default function () {
  const store = new Vuex.Store({
    state: {
      showDrawer: true,
      showSignIn: false
    },
    mutations: {
      toggleDrawer (state) {
        state.showDrawer = !state.showDrawer
      },
      hideDrawer (state) {
        state.showDrawer = false
      },
      showSignIn (state) {
        state.showSignIn = true
      },
      hideSignIn (state) {
        state.showSignIn = false
      }
    },
    actions: {
      toggleDrawer (context) {
        context.commit('toggleDrawer')
      },
      hideDrawer (context) {
        context.commit('hideDrawer')
      },
      showSignIn (context) {
        context.commit('showSignIn')
      },
      hideSignIn (context) {
        context.commit('hideSignIn')
      }
    }
  })

  return store
}
