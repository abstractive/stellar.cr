<template>
  <stellar-form-card
    class='q-mb-lg'
    v-bind="{title, actions}">
    Test
  </stellar-form-card>
</template>

<script>
export default {
  data () {
    return {
      fields: {},
      title: 'Join GitLab',
      actions: [
        {
          label: 'Request',
          icon: 'fab fa-gitlab text-grey-7',
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
        Comments: ''
      }
    }
  }
}
</script>
