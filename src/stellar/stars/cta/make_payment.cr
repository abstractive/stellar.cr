require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class MakePayment < Star
      include CallToAction
      vector :post, "/cta/make/payment"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_make_payment")
          SendGrid.host_notice(@payload, "cta_make_payment", "A new payment commitment arrived.")
          SendGrid.guest_notice(@payload, "cta_make_payment", "Thank you for your payment commitment.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
