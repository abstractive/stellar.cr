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
      title: 'Request Contact',
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
          icon: 'fas fa-phone text-grey-7',
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
