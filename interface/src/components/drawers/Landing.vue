<template>
  <div>
    <q-drawer
    elevated
    v-model="showDrawer"
    content-class="bg-grey-2"
    @hide="hideDrawer"
    >
      <q-list
        class="fit q-py-md"
        highlight
        link
      >
        <q-item clickable class='q-mb-md' to="/about">
          <q-item-section side avatar><q-icon name="fas fa-star-of-life" /></q-item-section>
          <q-item-section>What is Stellar?</q-item-section>
        </q-item>

        <q-separator />

        <q-item clickable class='q-my-md' to="/contribute">
          <q-item-section side avatar>
            <q-icon name="fas fa-fist-raised" />
          </q-item-section>
          <q-item-section>Contribute</q-item-section>
        </q-item>

        <q-item clickable class='q-my-md' to="/handbook">
          <q-item-section side avatar><q-icon name="fas fa-book" /></q-item-section>
          <q-item-section>Handbook</q-item-section>
        </q-item>

        <q-item clickable class='q-my-md' to="/support">
          <q-item-section side avatar><q-icon name="fas fa-headset" /></q-item-section>
          <q-item-section>Get Support</q-item-section>
        </q-item>

        <q-separator />

        <q-item clickable class='q-my-md' @click.native="revealSignIn">
          <q-item-section side avatar>
            <q-icon name="fas fa-sign-in-alt" />
          </q-item-section>
          <q-item-section>Sign In</q-item-section>
        </q-item>

      </q-list>
    </q-drawer>
  </div>
</template>

<script>

export default {
  data () {
    return {
      show_signin: false
    }
  },
  methods: {
    revealSignIn () {
      this.$store.dispatch('showSignIn')
    },
    hideDrawer () {
      this.$store.dispatch('hideDrawer')
    }
  },
  computed: {
    showDrawer () {
      return this.$store.state.showDrawer
    },
    showSignIn () {
      return this.$store.state.showSignIn
    }
  }
}

</script>
