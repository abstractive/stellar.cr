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
      title: 'Subscribe to the Newsletter',
      actions: [
        {
          label: 'Subscribe',
          icon: 'far fa-newspaper text-grey-7',
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
        EmailAddress: ''
      }
    }
  }
}
</script>
