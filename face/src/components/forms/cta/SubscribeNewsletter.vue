<template>
  <stellar-form-card
    class='q-mb-lg'
    v-bind="{title, actions}">
    <div class='row'>
      <div class='col q-pb-sm'>
        <q-input filled v-model="fields.NameFirst" type="text" :label="$t('fields.NameFirst')" />
      </div>
      <div class='col q-px-sm'>
        <q-input filled v-model="fields.NameMiddle" type="text" :label="$t('fields.NameMiddle')" />
      </div>
      <div class='col'>
        <q-input filled v-model="fields.NameLast" type="text" :label="$t('fields.NameLast')" />
      </div>
    </div>
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled v-model="fields.Organization" type="text" :label="$t('fields.Organization')" />
      </div>
    </div>
    <div class='row'>
      <div class='col'>
        <q-input filled type="email"
          v-bind="validateField($v.fields.EmailAddress)"
          v-model.trim="$v.fields.EmailAddress.$model"
          :label="$t('fields.EmailAddress')" />
      </div>
    </div>
  </stellar-form-card>
</template>
<script>
import { required, email } from 'vuelidate/lib/validators'
export default {
  data () {
    return {
      action: '/cta/subscribe/newsletter',
      fields: {},
      title: this.$t('forms.SubscribeNewsletter.title'),
      actions: [
        {
          class: 'full-width',
          label: this.$t('forms.SubscribeNewsletter.option'),
          icon: 'far fa-newspaper text-deep-orange-6',
          type: 'submit'
        }
      ]
    }
  },
  validations: {
    fields: {
      NameFirst: { },
      NameMiddle: {},
      NameLast: { },
      Organization: {},
      EmailAddress: { required, email }
    }
  },
  methods: {
    afterSubmit (response) {
      this.acknowledgeSuccess(
        'success.submission',
        [
          ['success.Subscribing', ['words.newsletter']]
        ]
      )
    }
  }
}
</script>
