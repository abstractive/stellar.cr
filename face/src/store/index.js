import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default function () {
  const store = new Vuex.Store({
    state: {
      showDrawer: true,
      showSignIn: false,
      fullDrawer: false
    },
    mutations: {
      toggleDrawer (state) {
        if (!(state.showDrawer = !state.showDrawer)) {
          state.fullDrawer = false
        }
      },
      hideDrawer (state) {
        state.showDrawer = false
      },
      showDrawer (state) {
        state.showDrawer = true
      },
      miniDrawer (state) {
        state.fullDrawer = false
      },
      fullDrawer (state) {
        state.fullDrawer = true
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
      showDrawer (context) {
        context.commit('showDrawer')
      },
      miniDrawer (context) {
        context.commit('miniDrawer')
      },
      fullDrawer (context) {
        context.commit('fullDrawer')
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
