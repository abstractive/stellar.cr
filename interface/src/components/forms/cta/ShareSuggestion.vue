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
      title: 'Share a Suggestion',
      actions: [
        {
          label: 'Send',
          icon: 'fas fa-paper-plane text-grey-7',
          type: 'submit'
        }
      ]
    }
  },
  methods: {
    onSubmit () {
      console.log('Submit')
    }
  }
}
</script>
