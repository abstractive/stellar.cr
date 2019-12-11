<template>
  <q-page class=" q-pa-lg">
    <h4 class='q-mt-none q-mb-lg'>
      <q-icon class='text-grey-7' name="fas fa-headset q-mr-sm" />
      {{ title }}
    </h4>
    <q-card class="">
      <q-card-section>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua.
      </q-card-section>
    </q-card>

    <stellar-cta-send-message />
    <stellar-cta-give-testimonial />
    <stellar-cta-share-suggestion />

    <stellar-cta-request-bid />
    <stellar-cta-request-access />
    <stellar-cta-request-contact />
    <stellar-cta-request-appointment />

    <stellar-cta-join-slack />
    <stellar-cta-join-mattermost />

    <stellar-cta-join-announcement-list />
    <stellar-cta-newsletter-subscription />

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
