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
      title: 'Join the Announcement List',
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
          label: 'Join',
          icon: 'fas fa-bullhorn text-grey-7',
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
      this.$q.dialog({
        title: this.$t('reset.title'),
        message: this.$t('reset.message'),
        cancel: true,
        persistent: true
      }).onOk(() => {
        this.clearFields()
      })
    }
  }
}
</script>
