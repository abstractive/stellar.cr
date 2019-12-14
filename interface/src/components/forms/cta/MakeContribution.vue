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
        <q-input filled type="number"
          v-bind="validateField($v.fields.ContributionAmount)"
          v-model.trim="$v.fields.ContributionAmount.$model"
          :label="$t('fields.ContributionAmount')" />
      </div>
    </div>
    <div class='row q-pb-sm'>
      <div class='col'>
      <div class='col'>
        <q-input filled type="textarea"
          v-bind="validateField($v.fields.Comments)"
          v-model.trim="$v.fields.Comments.$model"
          :label="$t('fields.Comments')" />
      </div>
      </div>
    </div>
  </stellar-form-card>
</template>
<script>
import { required, email, decimal, minValue } from 'vuelidate/lib/validators'
export default {
  data () {
    return {
      fields: {},
      title: this.$t('forms.MakeContribution.title'),
      actions: [
        {
          label: this.$t('forms.MakeContribution.option'),
          icon: 'fas fa-hand-holding-usd text-grey-7',
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
      ContributionAmount: { required, decimal, one_or_more_dollars: minValue(1) },
      Comments: {}
    }
  },
  methods: {
    onSubmit () {
      if (this.testSubmit()) {
        let response = this.doSubmit('post', '/cta/make/contribution')
        if (response) {
          console.log('pass')
        } else {
          console.log('fail')
        }
      }
    }
  }
}
</script>
