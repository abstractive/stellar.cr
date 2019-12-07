<template>
  <q-footer>
    <q-toolbar color="secondary">
      <q-toolbar-title class='text-right'>
        <a class='cursor-pointer' to="/about">abstractive labs</a> &copy;
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
