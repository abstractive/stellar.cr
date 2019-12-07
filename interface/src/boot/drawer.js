
import DrawerInformation from 'components/shared/Information.vue'
import DrawerOperations from 'components/shared/Operations.vue'

export default async ({ Vue }) => {
  Vue.component('stellar-drawer-operations', DrawerOperations)
  Vue.component('stellar-drawer-information', DrawerInformation)
}
