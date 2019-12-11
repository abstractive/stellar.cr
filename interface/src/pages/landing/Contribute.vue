<template>
  <q-page class="q-pa-lg">
    <h4 class='q-mt-none q-mb-lg'>
      <q-icon class='text-grey-7' name="fas fa-fist-raised q-mr-sm" />
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
      <stellar-cta-request-access />
      <stellar-cta-join-slack />
      <stellar-cta-join-mattermost />
      <stellar-cta-join-gitlab />
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
