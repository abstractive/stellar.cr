require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class SubscribeAnnouncement < Star
      include CallToAction
      vector :post, "/cta/subscribe/announcement"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_subscribe_announcement")
          SendGrid.host_notice(@payload, "cta_subscribe_announcement", "A new announcement list subscription arrived.")
          SendGrid.guest_notice(@payload, "cta_subscribe_announcement", "Thank you for your announcement list subscription.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
