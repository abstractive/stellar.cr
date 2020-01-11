require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class ShareGoal < Star
      include CallToAction
      vector :post, "/cta/share/goal"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_share_goal")
          SendGrid.host_notice(@payload, "cta_share_goal", "A new goal arrived.")
          SendGrid.guest_notice(@payload, "cta_share_goal", "Thank you for sharing your goal.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
