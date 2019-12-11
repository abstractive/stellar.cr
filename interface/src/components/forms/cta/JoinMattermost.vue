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
      title: 'Join Mattermost',
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
          icon: 'far fa-comments text-grey-7',
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
