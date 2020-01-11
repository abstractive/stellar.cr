require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class JoinSlack < Star
      include CallToAction
      vector :post, "/cta/join/slack"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_join_slack")
          SendGrid.host_notice(@payload, "cta_join_slack", "A request to join our Slack workspace arrived.")
          SendGrid.guest_notice(@payload, "cta_join_slack", "Thank you for asking to join our Slack workspace.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
