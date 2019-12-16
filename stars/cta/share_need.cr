module Stellar
  module CTA
    class ShareNeed < Star
      vector :post, "/cta/share/need"
      def post
        if @payload
          slack_templated_message("cta_share_need")
          sendgrid_host_notice("cta_share_need", "A new need arrived.")
          sendgrid_guest_notice("cta_share_need", "Thank you for sharing your need.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
