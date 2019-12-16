<template>
  <stellar-form-card
    class='q-mb-lg'
    v-bind="{title, actions}">
    <div class='row'>
      <div class='col q-pb-sm'>
        <q-input filled type="text"
          v-bind="validateField($v.fields.NameFirst)"
          v-model.trim="$v.fields.NameFirst.$model"
          :label="$t('fields.NameFirst')" />
      </div>
      <div class='col q-px-sm'>
        <q-input filled type="text" v-model="fields.NameMiddle" :label="$t('fields.NameMiddle')" />
      </div>
      <div class='col'>
        <q-input filled type="text"
          v-bind="validateField($v.fields.NameLast)"
          v-model.trim="$v.fields.NameLast.$model"
          :label="$t('fields.NameLast')" />
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
      <div class='col q-pl-sm'>
        <q-input filled v-model="fields.PhoneNumber" type="tel" :label="$t('fields.PhoneNumber')" />
      </div>
    </div>
    <q-separator class='q-my-md' />
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled v-model="fields.Subject" type="text" :label="$t('fields.Subject')" />
      </div>
    </div>
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled type="textarea"
          v-bind="validateField($v.fields.Message)"
          v-model.trim="$v.fields.Message.$model"
          :label="$t('fields.Message')" />
      </div>
    </div>
  </stellar-form-card>
</template>
<script>
import { required, email } from 'vuelidate/lib/validators'
export default {
  data () {
    return {
      action: '/cta/send/message',
      fields: {},
      title: this.$t('forms.SendMessage.title'),
      actions: [
        {
          label: this.$t('forms.SendMessage.option'),
          icon: 'fas fa-paper-plane text-grey-7',
          type: 'submit'
        }
      ]
    }
  },
  validations: {
    fields: {
      NameFirst: { required },
      NameMiddle: {},
      NameLast: { required },
      Organization: {},
      EmailAddress: { required, email },
      PhoneNumber: {},
      Subject: {},
      Message: { required }
    }
  },
  methods: {
    afterSubmit (response) {
      this.acknowledgeSuccess(
        'success.submission',
        [
          ['success.ThanksFor', ['words.message']],
          'success.contact_asap'
        ]
      )
    }
  }
}
</script>
