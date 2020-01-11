module Stellar
  module CTA
    class RequestAppointment < Star
      vector :post, "/cta/request/appointment"
      def post
        if !@payload.nil?
          slack_templated_message("cta_request_appointment")
          sendgrid_host_notice("cta_request_appointment", "A new appointment request arrived.")
          sendgrid_guest_notice("cta_request_appointment", "Thank you for your appointment request.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
