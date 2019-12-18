<template>
  <q-layout view="hHh lpR fFf">
    <stellar-header />
    <stellar-drawer-dashboard />
    <stellar-footer />
    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>
<script>

import NavigationHeader from 'components/shared/Header.vue'
import DrawerDashboard from 'components/drawer/Dashboard.vue'
import NavigationFooter from 'components/shared/Footer.vue'

export default {
  components: {
    'stellar-header': NavigationHeader,
    'stellar-drawer-dashboard': DrawerDashboard,
    'stellar-footer': NavigationFooter
  }
}
</script>
