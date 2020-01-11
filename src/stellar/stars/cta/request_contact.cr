require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class RequestContact < Star
      include CallToAction
      vector :post, "/cta/request/contact"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_request_contact")
          SendGrid.host_notice(@payload, "cta_request_contact", "A new contact request arrived.")
          SendGrid.guest_notice(@payload, "cta_request_contact", "Thank you for your contact request.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
