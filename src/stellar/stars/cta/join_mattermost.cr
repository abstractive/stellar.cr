require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class JoinMattermost < Star
      include CallToAction
      vector :post, "/cta/join/mattermost"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_join_mattermost")
          SendGrid.host_notice(@payload, "cta_join_mattermost", "A request to join our Mattermost workspace arrived.")
          SendGrid.guest_notice(@payload, "cta_join_mattermost", "Thank you for asking to join our Mattermost workspace.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
