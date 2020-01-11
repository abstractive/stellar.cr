require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class ShareSuggestion < Star
      include CallToAction
      vector :post, "/cta/share/suggestion"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_share_suggestion")
          SendGrid.host_notice(@payload, "cta_share_suggestion", "A new suggestion arrived.")
          SendGrid.guest_notice(@payload, "cta_share_suggestion", "Thank you for sharing your suggestion.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
