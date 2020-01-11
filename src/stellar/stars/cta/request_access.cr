require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class RequestAccess < Star
      include CallToAction
      vector :post, "/cta/request/access"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_request_access")
          SendGrid.host_notice(@payload, "cta_request_access", "A new access request arrived.")
          SendGrid.guest_notice(@payload, "cta_request_access", "Thank you for your access request.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
