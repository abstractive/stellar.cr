<template>
  <div>
    <stellar-landing target="section-about"
      background='statics/landing.jpg'>
      <h1 class='q-pa-none q-ma-none text-grey-10 text-shadow'>
        <q-icon class='text-deep-orange-6 text-weight-normal' name='fas fa-star-of-life' /> Stellar
      </h1>
      <h4 class="q-mt-md text-grey-9 text-shadow">Digital Presence Reimagined</h4>
    </stellar-landing>
    <stellar-about class='shadow-up-3' ref='about' />
  </div>
</template>
<script>
import StellarAbout from 'pages/landing/About.vue'
import StellarLanding from 'components/pages/Landing.vue'

export default {
  components: {
    'stellar-about': StellarAbout,
    'stellar-landing': StellarLanding
  }
}
</script>
<style scoped>
.text-shadow {
  text-shadow: 0px 0px 1px #ff6600;
}
</style>
