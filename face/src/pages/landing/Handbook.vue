<template>
  <q-page class="q-pa-lg">
    <h4 class='q-mt-none q-mb-lg'>
      <q-icon class='text-deep-orange-6' name="fas fa-book q-mr-sm" />
      {{ title }}
    </h4>
    <q-card class="q-mb-lg">
      <q-card-section>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua.
      </q-card-section>
    </q-card>
    <stellar-cta-request-answer />
  </q-page>
</template>
<script>
export default {
  data () {
    return {
      title: 'Handbook'
    }
  },
  methods: {
    toggleDrawer () {
      this.$store.dispatch('toggleDrawer')
    }
  }
}

</script>
