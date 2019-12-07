<template>
  <q-page class="flex flex-center">
    <div class='text-center'>
      <h3 class='text-center q-mt-none'>{{ title }}</h3>
    </div>
  </q-page>
</template>

<script>

export default {
  data () {
    return {
      title: 'Contribute'
    }
  },
  methods: {
    toggleDrawer () {
      this.$store.dispatch('toggleDrawer')
    }
  }
}

</script>
