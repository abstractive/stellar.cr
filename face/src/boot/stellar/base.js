import StellarInsignia from 'components/shared/Insignia.vue'
import StellarFormCard from 'components/shared/FormCard.vue'
import StellarFormDialog from 'components/shared/FormDialog.vue'

import { scroll } from 'quasar'
const { getScrollTarget, setScrollPosition } = scroll

export default ({ Vue }) => {
  Vue.mixin({
    methods: {
      scrollToElement (el, offsetY = 50) {
        el = document.getElementById(el)
        let container = document.getElementsByClassName('q-page-container')[0]
        const target = getScrollTarget(container)
        const offset = el.offsetParent.offsetTop - offsetY
        const duration = 300
        console.log([el, container, target, offset, offsetY])
        setScrollPosition(target, offset, duration)
      }
    }
  })
  Vue.component('stellar-form-card', StellarFormCard)
  Vue.component('stellar-form-dialog', StellarFormDialog)
  Vue.component('stellar-insignia', StellarInsignia)
}
