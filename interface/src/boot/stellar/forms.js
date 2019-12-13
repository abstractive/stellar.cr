import Vue from 'vue'
import Vuelidate from 'vuelidate'
Vue.use(Vuelidate)

import { i18n } from 'boot/i18n'

export default ({ Vue }) => {
  Vue.mixin({
    methods: {

      showError (field) {
        let keys = this.$_.keys(field.$params)
        let message = []
        this.$_.each(keys, function (value) {
          message.push(i18n.t('rules.' + value))
        })
        return this.$_.join(message, ' ')
      },

      validateField (field) {
        return {
          'hide-bottom-space': !field.$error,
          error: field.$error,
          'error-message': this.showError(field)
        }
      },

      testSubmit () {
        this.$v.$touch()
        if (this.$v.$invalid) {
          this.$q.notify({
            color: 'negative',
            position: 'top',
            message: this.$t('error.form_invalid'),
            icon: 'fas fa-exclamation-triangle'
          })
        } else {
          return true
        }
      },

      getFields () {
        return this.$_.mapValues(
          this.$v.fields.$params,
          (v, k) => { return this.fields[k] }
        )
      },

      doSubmit (method, url, messages = {}) {
        messages = Object.assign({
          success: 'coming_soon',
          failure: 'error.submission'
        }, messages)
        this.$axios({
          method: method,
          url: url,
          data: this.getFields(this)
        })
          .then((response) => {
            this.$v.fields.$reset()
            this.resetFields()
            this.$q.notify({
              color: 'positive',
              position: 'top',
              message: this.$t(messages.success),
              icon: 'fas fa-exclamation-circle'
            })
            return response
          })
          .catch(() => {
            this.$q.notify({
              color: 'negative',
              position: 'top',
              message: this.$t(messages.failure),
              icon: 'fas fa-exclamation-triangle'
            })
            return false
          })
      }
    }
  })
}
