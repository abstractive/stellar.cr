import StellarCTASendMessage from 'components/forms/cta/SendMessage.vue'
import StellarCTAShareTestimonial from 'components/forms/cta/ShareTestimonial.vue'
import StellarCTAShareSuggestion from 'components/forms/cta/ShareSuggestion.vue'
import StellarCTAShareNeed from 'components/forms/cta/ShareNeed.vue'
import StellarCTAShareGoal from 'components/forms/cta/ShareGoal.vue'

import StellarCTAMakeContribution from 'components/forms/cta/MakeContribution.vue'
import StellarCTAMakePledge from 'components/forms/cta/MakePledge.vue'
import StellarCTAMakePayment from 'components/forms/cta/MakePayment.vue'

import StellarCTARequestBid from 'components/forms/cta/RequestBid.vue'
import StellarCTARequestAccess from 'components/forms/cta/RequestAccess.vue'
import StellarCTARequestAnswer from 'components/forms/cta/RequestAnswer.vue'
import StellarCTARequestContact from 'components/forms/cta/RequestContact.vue'
import StellarCTARequestAppointment from 'components/forms/cta/RequestAppointment.vue'
import StellarCTARequestConsultation from 'components/forms/cta/RequestConsultation.vue'

import StellarCTAJoinSlack from 'components/forms/cta/JoinSlack.vue'
import StellarCTAJoinGitLab from 'components/forms/cta/JoinGitLab.vue'
import StellarCTAJoinMattermost from 'components/forms/cta/JoinMattermost.vue'

import StellarCTASubscribeAnnouncementList from 'components/forms/cta/SubscribeAnnouncementList.vue'
import StellarCTASubscribeNewsletter from 'components/forms/cta/SubscribeNewsletter.vue'

export default async ({ Vue }) => {
  Vue.component('stellar-cta-send-message', StellarCTASendMessage)
  //de Vue.component('stellar-cta-send-report', StellarCTASendReport)

  Vue.component('stellar-cta-share-testimonial', StellarCTAShareTestimonial)
  Vue.component('stellar-cta-share-suggestion', StellarCTAShareSuggestion)
  Vue.component('stellar-cta-share-need', StellarCTAShareNeed)
  Vue.component('stellar-cta-share-goal', StellarCTAShareGoal)

  Vue.component('stellar-cta-make-contribution', StellarCTAMakeContribution)
  Vue.component('stellar-cta-make-pledge', StellarCTAMakePledge)
  Vue.component('stellar-cta-make-payment', StellarCTAMakePayment)

  Vue.component('stellar-cta-request-bid', StellarCTARequestBid)
  Vue.component('stellar-cta-request-access', StellarCTARequestAccess)
  Vue.component('stellar-cta-request-answer', StellarCTARequestAnswer)
  Vue.component('stellar-cta-request-contact', StellarCTARequestContact)
  Vue.component('stellar-cta-request-appointment', StellarCTARequestAppointment)
  Vue.component('stellar-cta-request-consultation', StellarCTARequestConsultation)

  Vue.component('stellar-cta-join-slack', StellarCTAJoinSlack)
  Vue.component('stellar-cta-join-gitlab', StellarCTAJoinGitLab)
  Vue.component('stellar-cta-join-mattermost', StellarCTAJoinMattermost)

  Vue.component('stellar-cta-subscribe-announcement-list', StellarCTASubscribeAnnouncementList)
  Vue.component('stellar-cta-subscribe-newsletter', StellarCTASubscribeNewsletter)
}
