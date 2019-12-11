<template>
  <stellar-form-card
  class='q-mb-lg'
  :title="title"
  :actions="actions"
  :options="options">
    Test
  </stellar-form-card>
</template>

<script>
export default {
  data () {
    return {
      title: 'Join GitLab',
      options: [
        {
          label: 'Reset',
          icon: 'fas fa-recycle text-grey-7',
          action: ''
        },
        {
          label: 'Cancel',
          icon: 'far fa-times-circle text-grey-7',
          action: ''
        }
      ],
      actions: [
        {
          label: 'Request',
          icon: 'fab fa-gitlab text-grey-7',
          action: ''
        }
      ]
    }
  },
  computed: {

  },
  methods: {

  }
}
</script>
