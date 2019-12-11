<template>
  <q-layout view="lHr LpR lFr">
    <stellar-header />
    <stellar-drawer-landing />
    <stellar-footer />
    <stellar-signin />
    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>

import NavigationHeader from 'components/navigation/Header.vue'
import DrawerLanding from 'components/drawers/Landing.vue'
import NavigationFooter from 'components/navigation/Footer.vue'
import DialogSignIn from 'components/dialogs/SignIn.vue'

export default {
  name: 'Landing',
  components: {
    'stellar-header': NavigationHeader,
    'stellar-drawer-landing': DrawerLanding,
    'stellar-footer': NavigationFooter,
    'stellar-signin': DialogSignIn
  }
}

</script>

<style>
</style>
