// This is just an example,
// so you can safely delete all default props below

export default {
  failed: 'Action failed',
  success: 'Action was successful',
  error: {
    form_invalid: 'Please correct the errors in your form.'
  },
  types: {
    EmailAddress: {
      label: 'Email Address',
      error: 'Must be valid email address.'
    },
    Required: {
      error: 'Required.'
    }
  },
  forms: {
    SendMessage: {
      title: 'Send a Message',
      option: 'Send Now'
    },
    JoinSlack: {
      title: 'Join the Slack Workspace',
      option: 'Join Now'
    },
    JoinGitLab: {
      title: 'Join the GitLab Workspace',
      option: 'Join Now'
    },
    JoinMattermost: {
      title: 'Join the Mattermost Workspace',
      option: 'Join Now'
    },
    JoinAnnouncementList: {
      title: 'Join the Announcement List',
      option: 'Join Now'
    },
    NewsletterSubscription: {
      title: 'Subscribe to the Newsletter',
      option: 'Subscribe Now'
    },
    RequestContact: {
      title: 'Request Contact',
      option: 'Request Now'
    },
    RequestAccess: {
      title: 'Request Access',
      option: 'Request Now'
    },
    RequestAppointment: {
      title: 'Request an Appointment',
      option: 'Request Now'
    },
    RequestConsultation: {
      title: 'Request a Consultation',
      option: 'Request Now'
    },
    RequestBid: {
      title: 'Request a Bid',
      option: 'Request Now'
    },
    GiveTestimonial: {
      title: 'Give a Testimonial',
      option: 'Give Now'
    },
    ShareSuggestion: {
      title: 'Share a Suggestion',
      option: 'Share Now'
    }
  },
  reset: {
    option: 'Reset',
    title: 'Confirm Reset',
    message: 'Are you sure you want to erase the contents of this form?'
  }
}
