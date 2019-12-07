<template>
  <q-layout view="lHr LpR lFr">
    <stellar-header />
    <stellar-drawer-dashboard />
    <stellar-footer />
    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>

import NavigationHeader from 'components/navigation/Header.vue'
import DrawerDashboard from 'components/drawer/Dashboard.vue'
import NavigationFooter from 'components/navigation/Footer.vue'

export default {
  name: 'Dashboard',
  components: {
    'stellar-header': NavigationHeader,
    'stellar-drawer-dashboard': DrawerDashboard,
    'stellar-footer': NavigationFooter
  }
}
</script>

<style>
</style>
