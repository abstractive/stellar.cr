import StellarDrawerInformation from 'components/drawers/shared/Information.vue'
import StellarDrawerOperations from 'components/drawers/shared/Operations.vue'

import StellarInsignia from 'components/shared/Insignia.vue'
import StellarFormCard from 'components/shared/FormCard.vue'

export default async ({ Vue }) => {
  Vue.component('stellar-form-card', StellarFormCard)
  Vue.component('stellar-insignia', StellarInsignia)
  Vue.component('stellar-drawer-operations', StellarDrawerOperations)
  Vue.component('stellar-drawer-information', StellarDrawerInformation)
}
