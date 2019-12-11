import StellarCTASendMessage from 'components/forms/cta/SendMessage.vue'
import StellarCTAGiveTestimonial from 'components/forms/cta/GiveTestimonial.vue'
import StellarCTAShareSuggestion from 'components/forms/cta/ShareSuggestion.vue'

import StellarCTARequestBid from 'components/forms/cta/RequestBid.vue'
import StellarCTARequestAccess from 'components/forms/cta/RequestAccess.vue'
import StellarCTARequestContact from 'components/forms/cta/RequestContact.vue'
import StellarCTARequestAppointment from 'components/forms/cta/RequestAppointment.vue'

import StellarCTAJoinSlack from 'components/forms/cta/JoinSlack.vue'
import StellarCTAJoinMattermost from 'components/forms/cta/JoinMattermost.vue'

import StellarCTAJoinAnnouncementList from 'components/forms/cta/JoinAnnouncementList.vue'
import StellarCTANewsletterSubscription from 'components/forms/cta/NewsletterSubscription.vue'

export default async ({ Vue }) => {
  Vue.component('stellar-cta-send-message', StellarCTASendMessage)
  Vue.component('stellar-cta-give-testimonial', StellarCTAGiveTestimonial)
  Vue.component('stellar-cta-share-suggestion', StellarCTAShareSuggestion)

  Vue.component('stellar-cta-request-bid', StellarCTARequestBid)
  Vue.component('stellar-cta-request-access', StellarCTARequestAccess)
  Vue.component('stellar-cta-request-contact', StellarCTARequestContact)
  Vue.component('stellar-cta-request-appointment', StellarCTARequestAppointment)

  Vue.component('stellar-cta-join-slack', StellarCTAJoinSlack)
  Vue.component('stellar-cta-join-mattermost', StellarCTAJoinMattermost)

  Vue.component('stellar-cta-join-announcement-list', StellarCTAJoinAnnouncementList)
  Vue.component('stellar-cta-newsletter-subscription', StellarCTANewsletterSubscription)
}
