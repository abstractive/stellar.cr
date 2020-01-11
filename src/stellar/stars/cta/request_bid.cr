module Stellar
  module CTA
    class RequestBid < Star
      vector :post, "/cta/request/bid"
      def post
        if !@payload.nil?
          slack_templated_message("cta_request_bid")
          sendgrid_host_notice("cta_request_bid", "A new bid request arrived.")
          sendgrid_guest_notice("cta_request_bid", "Thank you for your bid request.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
