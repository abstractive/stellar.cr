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
        <q-input filled type="text"
          v-model="fields.NameMiddle" :label="$t('fields.NameMiddle')" />
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
        <q-input filled type="text"
        v-model="fields.Organization" :label="$t('fields.Organization')" />
      </div>
    </div>
    <div class='row'>
      <div class='col'>
        <q-input filled
          v-bind="validateField($v.fields.EmailAddress)"
          v-model.trim="$v.fields.EmailAddress.$model"
          type="email" :label="$t('fields.EmailAddress')" />
      </div>
    </div>
    <q-separator class='q-my-md' />
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled rows="3" v-model="fields.Comments" type="textarea" :label="$t('fields.Comments')" />
      </div>
    </div>
  </stellar-form-card>
</template>
<script>
import { required, email } from 'vuelidate/lib/validators'
export default {
  data () {
    return {
      action: '/cta/join/slack',
      fields: {},
      title: this.$t('forms.JoinSlack.title'),
      actions: [
        {
          class: 'full-width',
          label: this.$t('forms.JoinSlack.option'),
          icon: 'fab fa-slack text-deep-orange-6',
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
      Comments: {}
    }
  },
  methods: {
    afterSubmit (response) {
      this.acknowledgeSuccess(
        'success.submission',
        [
          ['success.JoiningWorkspace', ['words.Slack']],
          'success.contact_asap'
        ]
      )
    }
  }
}
</script>
