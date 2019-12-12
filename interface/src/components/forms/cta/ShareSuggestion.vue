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
        <q-input filled v-model="fields.EmailAddress" type="email" label="Email Address" />
      </div>
      <div class='col q-pl-sm'>
        <q-input filled v-model="fields.PhoneNumber" type="tel" label="Phone Number" />
      </div>
    </div>
    <q-separator class='q-my-md' />
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled v-model="fields.IdeaTitle" type="text" label="Idea Title" />
      </div>
    </div>
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled v-model="fields.Suggestion" type="textarea" label="Suggestion" />
      </div>
    </div>
  </stellar-form-card>
</template>
<script>
export default {
  data () {
    return {
      fields: {},
      title: this.$t('forms.ShareSuggestion.title'),
      actions: [
        {
          label: this.$t('forms.ShareSuggestion.option'),
          icon: 'far fa-lightbulb text-grey-7',
          type: 'submit'
        }
      ]
    }
  },
  methods: {
    onSubmit () {
      console.log(this.fields)
    },
    clearFields () {
      this.fields = {
        NameFirst: '',
        NameMiddle: '',
        NameLast: '',
        Organization: '',
        EmailAddress: '',
        PhoneNumber: '',
        IdeaTitle: '',
        Suggestion: ''
      }
    }
  }
}
</script>
