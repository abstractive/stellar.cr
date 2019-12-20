module Stellar
  module CTA
    class RequestContact < Star
      vector :post, "/cta/request/contact"
      def post
        if @payload
          slack_templated_message("cta_request_contact")
          sendgrid_host_notice("cta_request_contact", "A new contact request arrived.")
          sendgrid_guest_notice("cta_request_contact", "Thank you for your contact request.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
