<template>
  <div>
    <q-page class="stellar-landing full-height full-width fluid justify-center text-center column q-pa-lg" style="max-height: 100vh;">
        <div class="text-center q-mb-md">
          <h1 class='q-pa-none q-ma-none text-grey-10'>
            <q-icon class='text-deep-orange-6 text-weight-normal' name='fas fa-star-of-life' /> Stellar
          </h1>
          <h4 class="q-mt-md text-grey-9">Digital Presence Reimagined</h4>
          <q-btn size=lg push clickable no-caps
            class='text-left q-px-xl'
            icon-right="fas fa-chevron-down"
            color='grey-9'
            @click='scrollToElement("about")'
            label='Read More'>
          </q-btn>
        </div>
    </q-page>
    <stellar-about class='shadow-up-3' ref='about' />
  </div>
</template>
<script>
import StellarAbout from 'pages/landing/About.vue'
import { scroll } from 'quasar'
const { getScrollHeight, getScrollPosition, getScrollTarget, setScrollPosition } = scroll

export default {
  data () {
    return {
      slide: 1
    }
  },
  components: {
    'stellar-about': StellarAbout
  },
  methods: {
    scrollToElement (el) {
      el = this.$refs[el].$el
      let container = document.getElementById('layout')
      console.log(document.getElementById('layout'))
      console.log(getScrollHeight(el))
      console.log(getScrollPosition(el))
      const target = getScrollTarget(container)
      const offset = el.offsetTop - 50
      console.log(target)
      const duration = 200
      setScrollPosition(target, offset, duration)
    },
    buttonProps ({ href, route }) {
      console.log(route)
      const props = {
        color: 'black',
        noCaps: true,
        label: `To "${route.fullPath}"`,
        to: route.hash
      }
      return props
    }
  }
}
</script>

<style scoped>
.stellar-landing {
  z-index: 0;
  background: url('~assets/landing.jpg');
  background-size: cover;
  width: 100%;
  height: 100%;
}
</style>
