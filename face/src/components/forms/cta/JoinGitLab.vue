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
      action: '/cta/join/gitlab',
      fields: {},
      title: this.$t('forms.JoinGitLab.title'),
      actions: [
        {
          class: 'full-width',
          label: this.$t('forms.JoinGitLab.option'),
          icon: 'fab fa-gitlab text-deep-orange-6',
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
          ['success.JoiningWorkspace', ['words.GitLab']],
          'success.contact_asap'
        ]
      )
    }
  }
}
</script>
