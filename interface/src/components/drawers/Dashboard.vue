<template>

  <q-drawer
  elevated
  v-model="show"
  content-class="bg-grey-2"
  >

    <q-list
      highlight
      no-border
      link
      inset-delimiter
    >

      <q-item class='q-mt-sm q-mb-lg' exact to="/">
        <q-item-section side avatar>
          <q-icon name="fas fa-sign-out-alt" />
        </q-item-section>
        <q-item-section>Signout</q-item-section>
      </q-item>

      <q-item class='q-my-sm' exact to="/dashboard">
        <q-item-section side avatar>
          <q-icon name="fas fa-tachometer-alt" />
        </q-item-section>
        <q-item-section>Dashboard</q-item-section>
      </q-item>

      <q-item class='q-mb-md' to="/dashboard/profile">
        <q-item-section side avatar>
          <q-icon name="fas fa-address-card" />
        </q-item-section>
        <q-item-section>Profile</q-item-section>
      </q-item>

      <q-separator />

      <q-item class='q-my-md' to="/dashboard/needs">
        <q-item-section side avatar>
          <q-icon name="fas fa-briefcase" />
        </q-item-section>
        <q-item-section>Needs</q-item-section>
      </q-item>
     
      <q-item clickable class='q-my-sm' to='/'>
        <q-item-section side avatar>
          <q-icon name="fas fa-hands-helping" />
        </q-item-section>
        <q-item-section><b>Get Help</b></q-item-section>
      </q-item>

      <q-item clickable class='q-my-sm' to='/'>
        <q-item-section side avatar>
          <q-icon name="fas fa-hands" />
        </q-item-section>
        <q-item-section>Give Help</q-item-section>
      </q-item>

      <q-separator />

      <q-item clickable class='q-my-sm' to='/'>
        <q-item-section side avatar>
          <q-icon name="fas fa-thumbs-up" />
        </q-item-section>
        <q-item-section>Propose</q-item-section>
      </q-item>

      <q-item clickable class='q-my-sm' to='/'>
        <q-item-section side avatar>
          <q-icon name="fas fa-hand-peace" />
        </q-item-section>
        <q-item-section>Represent</q-item-section>
      </q-item>

      <q-separator />

      <q-item clickable class='q-my-sm' to='/'>
        <q-item-section side avatar>
          <q-icon name="fas fa-hand-holding-heart" />
        </q-item-section>
        <q-item-section>Sponsor</q-item-section>
      </q-item>

      <q-item clickable class='q-my-sm' to='/'>
        <q-item-section side avatar>
          <q-icon name="fas fa-hand-holding-usd" />
        </q-item-section>
        <q-item-section>Invest</q-item-section>
      </q-item>

    </q-list>

  </q-drawer>

</template>
<script>

export default {
  computed: {
    show () {
      return this.$store.state.showDrawer
    }
  }
}

</script>
