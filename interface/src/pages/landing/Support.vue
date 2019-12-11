<template>
  <q-page class="q-pa-lg">
    <h4 class='q-mt-none q-mb-lg'>
      <q-icon class='text-grey-7' name="fas fa-headset q-mr-sm" />
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

    <div class="q-py-sm row items-start q-gutter-md">
      <stellar-cta-send-message />
      <stellar-cta-request-bid />
      <stellar-cta-request-appointment />
      <stellar-cta-request-consultation />
      <stellar-cta-request-contact />
    </div>

  </q-page>
</template>

<script>

export default {
  data () {
    return {
      title: 'Get Support'
    }
  },
  methods: {
    toggleDrawer () {
      this.$store.dispatch('toggleDrawer')
    }
  }
}

</script>
