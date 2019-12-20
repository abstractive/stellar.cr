module Stellar
  module CTA
    class SubscribeAnnouncement < Star
      vector :post, "/cta/subscribe/announcement"
      def post
        if @payload
          slack_templated_message("cta_subscribe_announcement")
          sendgrid_host_notice("cta_subscribe_announcement", "A new announcement list subscription arrived.")
          sendgrid_guest_notice("cta_subscribe_announcement", "Thank you for your announcement list subscription.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
