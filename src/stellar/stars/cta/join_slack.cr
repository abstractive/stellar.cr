module Stellar
  module CTA
    class JoinSlack < Star
      vector :post, "/cta/join/slack"
      def post
        if !@payload.nil?
          slack_templated_message("cta_join_slack")
          sendgrid_host_notice("cta_join_slack", "A request to join our Slack workspace arrived.")
          sendgrid_guest_notice("cta_join_slack", "Thank you for asking to join our Slack workspace.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
