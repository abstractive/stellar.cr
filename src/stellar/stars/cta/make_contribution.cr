require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class MakeContribution < Star
      include CallToAction
      vector :post, "/cta/make/contribution"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_make_contribution")
          SendGrid.host_notice(@payload, "cta_make_contribution", "A new contribution commitment arrived.")
          SendGrid.guest_notice(@payload, "cta_make_contribution", "Thank you for your contribution commitment.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
