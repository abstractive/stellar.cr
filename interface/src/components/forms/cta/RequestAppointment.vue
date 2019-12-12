<template>
  <stellar-form-card
    class='q-mb-lg'
    v-bind="{title, actions}">
    <div class='row'>
      <div class='col q-pb-sm'>
        <q-input filled v-model="fields.NameFirst" type="text" label="First Name" />
      </div>
      <div class='col q-px-sm'>
        <q-input filled v-model="fields.NameMiddle" type="text" label="Middle Name" />
      </div>
      <div class='col'>
        <q-input filled v-model="fields.NameLast" type="text" label="Last Name" />
      </div>
    </div>
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled v-model="fields.Organization" type="text" label="Organization" />
      </div>
    </div>
    <div class='row'>
      <div class='col'>
        <q-input filled v-model="fields.EmailAddress" type="email" label="Email Address" />
      </div>
      <div class='col q-pl-sm'>
        <q-input filled v-model="fields.PhoneNumber" type="tel" label="Phone Number" />
      </div>
    </div>
    <q-separator class='q-my-md' />
    <div class='row'>
      <div class='col'>
        <q-input
          filled
          v-model="fields.Time"
          mask="time">
          <template v-slot:append>
            <q-icon name="access_time" class="cursor-pointer">
              <q-popup-proxy
                @before-show="updateTimeProxy"
                transition-show="scale"
                transition-hide="scale">
                <q-time landscape v-model="proxyTime">
                  <div class="row items-center justify-end">
                    <q-btn label="Cancel" color="primary" flat v-close-popup />
                    <q-btn label="OK" color="primary" flat @click="saveTime" v-close-popup />
                  </div>
                </q-time>
              </q-popup-proxy>
            </q-icon>
          </template>
        </q-input>
      </div>
      <div class='col q-pl-sm'>
        <q-input
          filled
          v-model="fields.Date"
          mask="date">
          <template v-slot:append>
            <q-icon name="event" class="cursor-pointer">
              <q-popup-proxy
                @before-show="updateDateProxy"
                transition-show="scale"
                transition-hide="scale">
                <q-date landscape v-model="proxyDate">
                  <div class="row items-center justify-end">
                    <q-btn label="Cancel" color="primary" flat v-close-popup />
                    <q-btn label="OK" color="primary" flat @click="saveDate" v-close-popup />
                  </div>
                </q-date>
              </q-popup-proxy>
            </q-icon>
          </template>
        </q-input>
      </div>
    </div>
    <q-separator class='q-my-md' />
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled v-model="fields.Comments" type="textarea" label="Comments" />
      </div>
    </div>
  </stellar-form-card>
</template>
<script>
export default {
  data () {
    return {
      fields: {},
      proxyTime: '',
      proxyDate: '',
      title: this.$t('forms.RequestAppointment.title'),
      actions: [
        {
          label: this.$t('forms.RequestAppointment.option'),
          icon: 'fas fa-calendar-day text-grey-7',
          type: 'submit'
        }
      ]
    }
  },
  methods: {
    onSubmit () {
      console.log(this.fields)
    },
    saveTime () {
      this.fields.Time = this.proxyTime
    },
    updateTimeProxy () {
      this.proxyTime = this.fields.Time
    },
    saveDate () {
      this.fields.Date = this.proxyDate
    },
    updateDateProxy () {
      this.proxyDate = this.fields.Date
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
        Time: '',
        Date: '',
        LocationAddress: '',
        Comments: ''
      }
      this.proxyTime = this.fields.Time
    }
  }
}
</script>
