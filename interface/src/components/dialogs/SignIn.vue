<template>
  <q-dialog
    @hide='onClose'
    v-model="showSignIn"
    persistent
    transition-show="flip-down"
    transition-hide="flip-up">
      <q-card style="width: 500px" class="bg-secondary text-white q-pb-none q-mb-none">

        <q-card-section class='q-mt-sm q-px-lg'>
          <q-input
            ref='accessor'
            clearable
            filled
            dark
            v-model="accessor"
            outlined
            type='email'
            standout='text-white'
            :rules="[val => !!val || 'Email address is required']"
            placeholder="Email Address">
            <template v-slot:append>
              <q-avatar>
                <q-icon name='fas fa-at' />
              </q-avatar>
            </template>
          </q-input>
        </q-card-section>

        <q-card-section class='q-px-lg q-pt-none q-mt-none'>
          <q-input
            ref='password'
            v-model="password"
            filled
            clearable
            dark
            outlined
            standout='text-white'
            :rules="[val => !!val || 'Password is required']"
            :type="hidePassword ? 'password' : 'text'"
            placeholder="Password">
            <template v-slot:append>
              <q-icon
                :name="hidePassword ? 'fas fa-eye-slash' : 'fas fa-eye'"
                class="cursor-pointer q-ml-sm"
                @click="hidePassword = !hidePassword"
              />
              <q-avatar>
                <q-icon name='fas fa-key' />
              </q-avatar>
            </template>
          </q-input>
        </q-card-section>

        <q-card-section class='q-pa-lg'>
          <q-btn
            @click='onSubmit'
            icon-right="fas fa-sign-in-alt"
            label="Sign In"
            type="submit"
            color="primary"
            size='lg'
            class='full-width' />
          <q-btn
            @click='onClose'
            label="Cancel"
            type="cancel"
            color="primary"
            flat
            class="q-mt-md full-width q-pb-none q-mb-none" />
        </q-card-section>

      </q-card>
  </q-dialog>
</template>

<script>
export default {
  data () {
    return {
      accessor: '',
      password: '',
      hidePassword: true
    }
  },
  computed: {
    showSignIn () {
      return this.$store.state.showSignIn
    }
  },
  methods: {
    onClose () {
      this.$store.dispatch('hideSignIn')
    },
    onSubmit () {
      var payload = {
        accessor: this.accessor,
        password: this.password
      }
      this.$axios.post('/participant/authenticate', payload)
        .then((response) => {
          //de console.log(response.data)
          //de this.data = response.data
          this.$q.notify({
            color: 'positive',
            position: 'top',
            message: 'Coming Soon',
            icon: 'fas fa-exclamation-circle'
          })
        })
        .catch(() => {
          this.$q.notify({
            color: 'negative',
            position: 'top',
            message: 'Sign In Error',
            icon: 'fas fa-exclamation-triangle'
          })
        })
    },
    onReset () {
      this.accessor = ''
      this.password = ''
      this.$refs.accessor.resetValidation()
      this.$refs.password.resetValidation()
    }
  }
}
</script>
