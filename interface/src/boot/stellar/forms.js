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

      validForm () {
        this.$v.$touch()
        if (this.$v.$invalid) {
          this.$q.notify({
            color: 'negative',
            position: 'top',
            message: this.$t('error.form_invalid'),
            icon: 'fas fa-exclamation-triangle'
          })
          return false
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

      clearFields () {
        this.$v.fields.$reset()
        this.fields = this.$_.mapValues(this.$v.fields.$params, () => { return '' })
      },

      concatMessages (messages, joiner = ' ') {
        let component = this
        let message = []
        if (typeof (messages) === 'string') {
          return this.$t(messages)
        }
        this.$_.each(messages, (value) => {
          if (Array.isArray(value)) {
            if (Array.isArray(value[1])) {
              message.push(
                component.$t(
                  value[0],
                  component.$_.map(value[1], (v) => { return component.$t(v) }
                  )
                )
              )
            } else {
              console.warn(['Invalid concatMessage values:', value, value.last])
            }
          } else {
            message.push(component.$t(value))
          }
        })
        return message.join(joiner)
      },

      acknowledgeSuccess (title, messages) {
        this.$q.dialog({
          title: this.$t(title),
          message: this.concatMessages(messages),
          persistent: true,
          dark: true,
          html: true
        })
          .onOk(() => {
            this.clearFields()
          })
      },

      doSubmit () {
        if (this.validForm()) {
          if (typeof (this.beforeSubmit) === 'function') {
            this.beforeSubmit()
          }
          let component = this
          this.$axios({
            method: this.method || 'post',
            url: this.action,
            data: this.getFields()
          })
            .then((response) => {
              if (typeof (component.afterSubmit) === 'function') {
                component.afterSubmit(response)
              } else {
                component.clearFields()
                component.$q.notify({
                  color: 'positive',
                  position: 'top',
                  message: component.$t('coming_soon'),
                  icon: 'fas fa-exclamation-circle'
                })
              }
            })
            .catch((response) => {
              component.$q.notify({
                color: 'negative',
                position: 'top',
                message: component.$t('error.submission'),
                icon: 'fas fa-exclamation-triangle'
              })
              console.warn(['failure', response])
              return false
            })
        }
      }
    }
  })
}
