<template>
  <q-page class="q-pa-lg">
    <h4 class='q-mt-none q-mb-lg'>
      <q-icon class='text-grey-7' name="fas fa-star-of-life q-mr-sm" />
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
      <stellar-cta-share-testimonial />
      <stellar-cta-share-suggestion />
      <stellar-cta-subscribe-announcement-list />
      <stellar-cta-subscribe-newsletter />
    </div>
  </q-page>
</template>
<script>

export default {
  data () {
    return {
      title: 'What is Stellar?'
    }
  },
  methods: {
    toggleDrawer () {
      this.$store.dispatch('toggleDrawer')
    }
  }
}

</script>
