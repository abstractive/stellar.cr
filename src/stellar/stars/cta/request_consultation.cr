module Stellar
  module CTA
    class RequestConsultation < Star
      vector :post, "/cta/request/consultation"
      def post
        if !@payload.nil?
          slack_templated_message("cta_request_consultation")
          sendgrid_host_notice("cta_request_consultation", "A new consultation request arrived.")
          sendgrid_guest_notice("cta_request_consultation", "Thank you for your consultation request.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
