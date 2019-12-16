<template>
  <div>
    <q-drawer
      elevated bordered
      :mini="!fullDrawer"
      show-if-above
      @click.capture="clickDrawer"
      v-model="showDrawer"
      :breakpoint="500"
      content-class="bg-grey-5">
        <q-list
          class="fit q-py-md"
          highlight
          link>
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
      <div
        class="q-mini-drawer-hide absolute"
        style="top: 15px; right: -17px">
          <q-btn
            dense
            round
            unelevated
            color="accent"
            icon="chevron_left"
            @click.capture="miniDrawer"
          />
        </div>
    </q-drawer>
  </div>
</template>

<script>

export default {
  data () {
    return {
    }
  },
  methods: {
    revealSignIn () {
      this.$store.dispatch('showSignIn')
    },
    hideDrawer () {
      this.$store.dispatch('hideDrawer')
    },
    miniDrawer () {
      this.$store.dispatch('miniDrawer')
    },
    clickDrawer () {
      if (!this.fullDrawer) {
        this.$store.dispatch('fullDrawer')
      }
    },
    toggleDrawer (e) {
      e.stopPropagation()
    }
  },
  computed: {
    showDrawer: {
      get () {
        return this.$store.state.showDrawer
      },
      set (value) {
        if (value) {
          this.$store.dispatch('showDrawer')
        } else {
          this.$store.dispatch('hideDrawer')
        }
      }
    },
    fullDrawer () {
      return this.$store.state.fullDrawer
    },
    showSignIn () {
      return this.$store.state.showSignIn
    }
  }
}
</script>
