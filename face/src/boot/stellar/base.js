import StellarInsignia from 'components/shared/Insignia.vue'
import StellarFormCard from 'components/shared/FormCard.vue'
import StellarFormDialog from 'components/shared/FormDialog.vue'

export default ({ Vue }) => {
  Vue.component('stellar-form-card', StellarFormCard)
  Vue.component('stellar-form-dialog', StellarFormDialog)
  Vue.component('stellar-insignia', StellarInsignia)
}
