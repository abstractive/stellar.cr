<template>
  <div>
    <q-drawer
    elevated
    v-model="showDrawer"
    content-class="bg-grey-2"
    @hide="hideDrawer"
    >
      <q-list
        class="fit q-pt-md"
        highlight
        link
      >

        <!--
        <q-item clickable class='q-mb-sm' to="/">
          <q-item-section side avatar>
            <q-icon name="fas fa-fist-raised" />
          </q-item-section>
          <q-item-section>Sign Up</q-item-section>
        </q-item>
        -->

        <q-item clickable class='q-mb-sm' @click.native="revealSignIn">
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
