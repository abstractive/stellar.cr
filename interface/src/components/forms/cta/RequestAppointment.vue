<template>
  <stellar-form-card
    class='q-mb-lg'
    v-bind="{title, actions}">
    <div class='row'>
      <div class='col q-pb-sm'>
        <q-input filled type="text"
          v-bind="validateField($v.fields.NameFirst)"
          v-model.trim="$v.fields.NameFirst.$model"
          :label="$t('fields.NameFirst')" />
      </div>
      <div class='col q-px-sm'>
        <q-input filled type="text" v-model="fields.NameMiddle" :label="$t('fields.NameMiddle')" />
      </div>
      <div class='col'>
        <q-input filled type="text"
          v-bind="validateField($v.fields.NameLast)"
          v-model.trim="$v.fields.NameLast.$model"
          :label="$t('fields.NameLast')" />
      </div>
    </div>
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled v-model="fields.Organization" type="text" :label="$t('fields.Organization')" />
      </div>
    </div>
    <div class='row'>
      <div class='col'>
        <q-input filled type="email"
          v-bind="validateField($v.fields.EmailAddress)"
          v-model.trim="$v.fields.EmailAddress.$model"
          :label="$t('fields.EmailAddress')" />
      </div>
      <div class='col q-pl-sm'>
        <q-input filled v-model="fields.PhoneNumber" type="tel" :label="$t('fields.PhoneNumber')" />
      </div>
    </div>
    <q-separator class='q-my-md' />
    <div class='row'>
      <div class='col'>
        <q-input
          filled
          :label="$t('fields.IdealTime')"
          v-model="fields.IdealTime"
          mask="time">
          <template v-slot:append>
            <q-icon name="access_time" class="cursor-pointer">
              <q-popup-proxy
                @before-show="updateIdealTimeProxy"
                transition-show="scale"
                transition-hide="scale">
                <q-time landscape v-model="proxyIdealTime">
                  <div class="row items-center justify-end">
                    <q-btn :label="$t('fields.Cancel')" color="primary" flat v-close-popup />
                    <q-btn :label="$t('fields.OK')" color="primary" flat @click="saveIdealTime" v-close-popup />
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
          :label="$t('fields.IdealDate')"
          v-model="fields.IdealDate"
          mask="date">
          <template v-slot:append>
            <q-icon name="event" class="cursor-pointer">
              <q-popup-proxy
                @before-show="updateIdealDateProxy"
                transition-show="scale"
                transition-hide="scale">
                <q-date landscape v-model="proxyIdealDate">
                  <div class="row items-center justify-end">
                    <q-btn :label="$t('fields.Cancel')" color="primary" flat v-close-popup />
                    <q-btn :label="$t('fields.OK')" color="primary" flat @click="saveIdealDate" v-close-popup />
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
        <q-input filled rows='4' v-model="fields.LocationAddress" type="textarea" :label="$t('fields.LocationAddress')" />
      </div>
    </div>
    <q-separator class='q-my-md' />
    <div class='row q-pb-sm'>
      <div class='col'>
        <q-input filled rows="3" v-model="fields.Comments" type="textarea" :label="$t('fields.Comments')" />
      </div>
    </div>
  </stellar-form-card>
</template>
<script>
import { required, email } from 'vuelidate/lib/validators'
export default {
  data () {
    return {
      fields: {},
      proxyIdealTime: '',
      proxyIdealDate: '',
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
  validations: {
    fields: {
      NameFirst: { required },
      NameMiddle: {},
      NameLast: { required },
      Organization: {},
      EmailAddress: { required, email },
      PhoneNumber: {},
      Type: {},
      IdealTime: {},
      IdealDate: {},
      LocationAddress: {},
      Comments: {}
    }
  },
  methods: {
    onSubmit () {
      if (this.testSubmit()) {
        let response = this.doSubmit('post', '/cta/request/appointment')
        if (response) {
          console.log('pass')
        } else {
          console.log('fail')
        }
      }
    },
    saveIdealTime () {
      this.fields.IdealTime = this.proxyIdealTime
    },
    updateIdealTimeProxy () {
      this.proxyIdealTime = this.fields.IdealTime
    },
    saveIdealDate () {
      this.fields.IdealDate = this.proxyIdealDate
    },
    updateIdealDateProxy () {
      this.proxyIdealDate = this.fields.IdealDate
    }
  }
}
</script>
