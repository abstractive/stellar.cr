import StellarCTASendMessage from 'components/forms/cta/SendMessage.vue'
import StellarCTAGiveTestimonial from 'components/forms/cta/GiveTestimonial.vue'
import StellarCTAShareSuggestion from 'components/forms/cta/ShareSuggestion.vue'

import StellarCTAMakeContribution from 'components/forms/cta/MakeContribution.vue'
import StellarCTAMakePledge from 'components/forms/cta/MakePledge.vue'
import StellarCTAMakePayment from 'components/forms/cta/MakePayment.vue'

import StellarCTARequestBid from 'components/forms/cta/RequestBid.vue'
import StellarCTARequestAccess from 'components/forms/cta/RequestAccess.vue'
import StellarCTARequestContact from 'components/forms/cta/RequestContact.vue'
import StellarCTARequestAppointment from 'components/forms/cta/RequestAppointment.vue'
import StellarCTARequestConsultation from 'components/forms/cta/RequestConsultation.vue'

import StellarCTAJoinSlack from 'components/forms/cta/JoinSlack.vue'
import StellarCTAJoinGitLab from 'components/forms/cta/JoinGitLab.vue'
import StellarCTAJoinMattermost from 'components/forms/cta/JoinMattermost.vue'

import StellarCTAJoinAnnouncementList from 'components/forms/cta/JoinAnnouncementList.vue'
import StellarCTANewsletterSubscription from 'components/forms/cta/NewsletterSubscription.vue'

export default async ({ Vue }) => {
  Vue.component('stellar-cta-send-message', StellarCTASendMessage)
  Vue.component('stellar-cta-give-testimonial', StellarCTAGiveTestimonial)
  Vue.component('stellar-cta-share-suggestion', StellarCTAShareSuggestion)

  Vue.component('stellar-cta-make-contribution', StellarCTAMakeContribution)
  Vue.component('stellar-cta-make-pledge', StellarCTAMakePledge)
  Vue.component('stellar-cta-make-payment', StellarCTAMakePayment)

  Vue.component('stellar-cta-request-bid', StellarCTARequestBid)
  Vue.component('stellar-cta-request-access', StellarCTARequestAccess)
  Vue.component('stellar-cta-request-contact', StellarCTARequestContact)
  Vue.component('stellar-cta-request-appointment', StellarCTARequestAppointment)
  Vue.component('stellar-cta-request-consultation', StellarCTARequestConsultation)

  Vue.component('stellar-cta-join-slack', StellarCTAJoinSlack)
  Vue.component('stellar-cta-join-gitlab', StellarCTAJoinGitLab)
  Vue.component('stellar-cta-join-mattermost', StellarCTAJoinMattermost)

  Vue.component('stellar-cta-join-announcement-list', StellarCTAJoinAnnouncementList)
  Vue.component('stellar-cta-newsletter-subscription', StellarCTANewsletterSubscription)
}
