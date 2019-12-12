import Vue from 'vue'
import Vuelidate from 'vuelidate'
Vue.use(Vuelidate)

import { i18n } from 'boot/i18n'

export default ({ Vue }) => {
  Vue.prototype.showError = (field) => {
    let keys = Vue.prototype.$_.keys(field.$params)
    let message = []
    Vue.prototype.$_.each(keys, function (value) {
      message.push(i18n.t('rules.' + value))
    })
    return Vue.prototype.$_.join(message, ' ')
  }
  Vue.prototype.validateField = (field) => {
    return {
      'hide-bottom-space': !field.$error,
      error: field.$error,
      'error-message': Vue.prototype.showError(field)
    }
  }

  Vue.prototype.testSubmit = (component) => {
    component.$v.$touch()
    if (component.$v.$invalid) {
      component.$q.notify({
        color: 'negative',
        position: 'top',
        message: component.$t('error.form_invalid'),
        icon: 'fas fa-exclamation-triangle'
      })
    } else {
      return true
    }
  }
}
