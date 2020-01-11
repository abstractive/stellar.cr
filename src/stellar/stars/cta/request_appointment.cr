require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class RequestAppointment < Star
      include CallToAction
      vector :post, "/cta/request/appointment"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_request_appointment")
          SendGrid.host_notice(@payload, "cta_request_appointment", "A new appointment request arrived.")
          SendGrid.guest_notice(@payload, "cta_request_appointment", "Thank you for your appointment request.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
