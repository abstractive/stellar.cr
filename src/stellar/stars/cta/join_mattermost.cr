module Stellar
  module CTA
    class JoinMattermost < Star
      vector :post, "/cta/join/mattermost"
      def post
        if !@payload.nil?
          slack_templated_message("cta_join_mattermost")
          sendgrid_host_notice("cta_join_mattermost", "A request to join our Mattermost workspace arrived.")
          sendgrid_guest_notice("cta_join_mattermost", "Thank you for asking to join our Mattermost workspace.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
