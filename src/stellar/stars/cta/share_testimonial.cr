require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class ShareTestimonial < Star
      include CallToAction
      vector :post, "/cta/share/testimonial"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_share_testimonial")
          SendGrid.host_notice(@payload, "cta_share_testimonial", "A new testimonial arrived.")
          SendGrid.guest_notice(@payload, "cta_share_testimonial", "Thank you for sharing your testimonial.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
