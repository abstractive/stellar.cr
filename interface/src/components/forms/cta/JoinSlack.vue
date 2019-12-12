<template>
  <stellar-form-card
    class='q-mb-lg'
    v-bind="{title, actions}">
    <div class='row'>
      <div class='col q-pb-sm'>
        <q-input filled v-model="fields.NameFirst" type="text" label="First Name" />
      </div>
      <div class='col q-px-sm'>
        <q-input filled v-model="fields.NameMiddle" type="text" label="Middle Name" />
      </div>
      <div class='col'>
        <q-input filled v-model="fields.NameLast" type="text" label="Last Name" />
      </div>
    </div>
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled v-model="fields.Organization" type="text" label="Organization" />
      </div>
    </div>
    <div class='row'>
      <div class='col'>
        <q-input filled
          :hide-bottom-space="!$v.fields.EmailAddress.$dirty"
          v-model.trim="$v.fields.EmailAddress.$model"
          :error-message="showError(['EmailAddress','Required'])"
          :error="$v.fields.EmailAddress.$dirty"
          type="email" :label="$t('types.EmailAddress.label')" />
      </div>
    </div>
    <q-separator class='q-my-md' />
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled v-model="fields.Comments" type="textarea" label="Comments" />
      </div>
    </div>
  </stellar-form-card>
</template>
<script>
import { required, email } from 'vuelidate/lib/validators'
export default {
  data () {
    return {
      fields: {},
      title: this.$t('forms.JoinSlack.title'),
      actions: [
        {
          label: this.$t('forms.JoinSlack.option'),
          icon: 'fab fa-slack text-grey-7',
          type: 'submit'
        }
      ]
    }
  },
  validations: {
    fields: {
      EmailAddress: {
        required,
        email
      }
    }
  },
  methods: {
    onSubmit () {
      this.$v.$touch()
      if (this.$v.$invalid) {
        console.log('error')
        this.$q.notify({
          color: 'negative',
          position: 'top',
          message: this.$t('error.form_invalid'),
          icon: 'fas fa-exclamation-triangle'
        })
      } else {
        console.log(this.fields)
      }
    },
    clearFields () {
      this.$v.fields.$reset()
      this.fields = {
        NameFirst: '',
        NameMiddle: '',
        NameLast: '',
        Organization: '',
        EmailAddress: '',
        Comments: ''
      }
    }
  }
}
</script>
