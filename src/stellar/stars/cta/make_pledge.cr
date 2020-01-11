require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class MakePledge < Star
      include CallToAction
      vector :post, "/cta/make/pledge"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_make_pledge")
          SendGrid.host_notice(@payload, "cta_make_pledge", "A new pledge commitment arrived.")
          SendGrid.guest_notice(@payload, "cta_make_pledge", "Thank you for your pledge commitment.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
