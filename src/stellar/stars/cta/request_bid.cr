require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class RequestBid < Star
      include CallToAction
      vector :post, "/cta/request/bid"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_request_bid")
          SendGrid.host_notice(@payload, "cta_request_bid", "A new bid request arrived.")
          SendGrid.guest_notice(@payload, "cta_request_bid", "Thank you for your bid request.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
