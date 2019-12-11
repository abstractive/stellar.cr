<template>
  <stellar-form-card
    class='q-mb-lg'
    v-bind="{title, actions, options}">
    Test
  </stellar-form-card>
</template>
<script>
export default {
  data () {
    return {
      title: 'Request a Consultation',
      options: [
        {
          label: 'Reset',
          icon: 'fas fa-recycle text-grey-7',
          click: this.onReset,
          type: 'reset'
        }
      ],
      actions: [
        {
          label: 'Request',
          icon: 'fas fa-diagnoses text-grey-7',
          type: 'submit'
        }
      ]
    }
  },
  methods: {
    onSubmit () {
      console.log('Submit')
    },
    onReset () {
      console.log('Reset')
    }
  }
}
</script>
