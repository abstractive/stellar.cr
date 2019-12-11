import StellarCTA_SendMessage from 'components/forms/cta/SendMessage.vue'
import StellarCTA_GiveTestimonial from 'components/forms/cta/GiveTestimonial.vue'
import StellarCTA_ShareSuggestion from 'components/forms/cta/ShareSuggestion.vue'

import StellarCTA_RequestBid from 'components/forms/cta/RequestBid.vue'
import StellarCTA_RequestAccess from 'components/forms/cta/RequestAccess.vue'
import StellarCTA_RequestContact from 'components/forms/cta/RequestContact.vue'
import StellarCTA_RequestApppointment from 'components/forms/cta/RequestApppointment.vue'

import StellarCTA_JoinSlack from 'components/forms/cta/JoinSlack.vue'
import StellarCTA_JoinMattermost from 'components/forms/cta/JoinMattermost.vue'

import StellarCTA_JoinAnnouncementList from 'components/forms/cta/JoinAnnouncementList.vue'
import StellarCTA_NewsletterSubscription from 'components/forms/cta/NewsletterSubscription.vue'


export default async ({ Vue }) => {
  Vue.component('stellar-cta-send-message', StellarCTA_SendMessage)
  Vue.component('stellar-cta-give-testimonial', StellarCTA_GiveTestimonial)
  Vue.component('stellar-cta-share-suggestion', StellarCTA_ShareSuggestion)

  Vue.component('stellar-cta-request-bid', StellarCTA_RequestBid)
  Vue.component('stellar-cta-request-access', StellarCTA_RequestAccess)
  Vue.component('stellar-cta-request-contact', StellarCTA_RequestContact)
  Vue.component('stellar-cta-request-appointment', StellarCTA_RequestApppointment)

  Vue.component('stellar-cta-join-slack', StellarCTA_JoinSlack)
  Vue.component('stellar-cta-join-mattermost', StellarCTA_JoinMattermost)

  Vue.component('stellar-cta-join-announcement-list', StellarCTA_JoinAnnouncementList)
  Vue.component('stellar-cta-newsletter-subscription', StellarCTA_NewsletterSubscription)
}
