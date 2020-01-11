require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class RequestConsultation < Star
      include CallToAction
      vector :post, "/cta/request/consultation"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_request_consultation")
          SendGrid.host_notice(@payload, "cta_request_consultation", "A new consultation request arrived.")
          SendGrid.guest_notice(@payload, "cta_request_consultation", "Thank you for your consultation request.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
