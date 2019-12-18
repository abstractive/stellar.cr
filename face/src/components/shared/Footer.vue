<template>
  <q-footer>
    <q-toolbar color="secondary">
      <q-toolbar-title class='text-right text-subtitle2'>
        <a class='cursor-pointer' @click="$router.push('/about')">abstractive labs</a> &copy;
      </q-toolbar-title>
    </q-toolbar>
  </q-footer>
</template>
<script>
import { openURL } from 'quasar'
export default {
  methods: {
    openURL
  }
}
</script>
