<template>
  <q-page class="flex flex-center">
    <div class='text-center'>
      <h3 class='text-center q-mt-none'>{{ title }}</h3>
      <stellar-insignia class='q-mb-lg' />
      <q-btn @click="toggleDrawer"
            size='lg'
            flat
            color='primary'
            label='Options'
            icon='far fa-compass'
            class='q-mt-md full-width' />
    </div>
  </q-page>
</template>

<script>

export default {
  data () {
    return {
      title: 'About Stellar'
    }
  },
  methods: {
    toggleDrawer () {
      this.$store.dispatch('toggleDrawer')
    }
  }
}

</script>
