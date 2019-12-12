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
      title: 'Request an Appointment',
      actions: [
        {
          label: 'Request',
          icon: 'fas fa-calendar-day text-grey-7',
          type: 'submit'
        }
      ]
    }
  },
  methods: {
    onSubmit () {
      console.log('Submit')
    },
    clearFields () {
      this.fields = {
        NameFirst: '',
        NameMiddle: '',
        NameLast: '',
        Organization: '',
        EmailAddress: '',
        PhoneNumber: '',
        Type: '',
        LocationAddress: '',
        ProjectTitle: '',
        Comments: ''
      }
    }
  }
}
</script>
