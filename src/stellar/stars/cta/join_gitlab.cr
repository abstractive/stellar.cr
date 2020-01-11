require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class JoinGitlab < Star
      include CallToAction
      vector :post, "/cta/join/gitlab"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_join_gitlab")
          SendGrid.host_notice(@payload, "cta_join_gitlab", "A request to join our GitLab workspace arrived.")
          SendGrid.guest_notice(@payload, "cta_join_gitlab", "Thank you for asking to join our GitLab workspace.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
