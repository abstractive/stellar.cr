module Stellar
  module CTA
    class RequestAccess < Star
      vector :post, "/cta/request/access"
      def post
        if !@payload.nil?
          slack_templated_message("cta_request_access")
          sendgrid_host_notice("cta_request_access", "A new access request arrived.")
          sendgrid_guest_notice("cta_request_access", "Thank you for your access request.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
