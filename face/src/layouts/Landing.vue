<template>
  <q-layout view="hHh lpR fFf">
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
import NavigationHeader from 'components/shared/Header.vue'
import DrawerLanding from 'components/drawers/Landing.vue'
import NavigationFooter from 'components/shared/Footer.vue'
import DialogSignIn from 'components/dialogs/SignIn.vue'
export default {
  components: {
    'stellar-header': NavigationHeader,
    'stellar-drawer-landing': DrawerLanding,
    'stellar-footer': NavigationFooter,
    'stellar-signin': DialogSignIn
  }
}
</script>
