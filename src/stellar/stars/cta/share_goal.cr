module Stellar
  module CTA
    class ShareGoal < Star
      vector :post, "/cta/share/goal"
      def post
        if !@payload.nil?
          slack_templated_message("cta_share_goal")
          sendgrid_host_notice("cta_share_goal", "A new goal arrived.")
          sendgrid_guest_notice("cta_share_goal", "Thank you for sharing your goal.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
