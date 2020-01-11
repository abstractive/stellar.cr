require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class ShareNeed < Star
      include CallToAction
      vector :post, "/cta/share/need"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_share_need")
          SendGrid.host_notice(@payload, "cta_share_need", "A new need arrived.")
          SendGrid.guest_notice(@payload, "cta_share_need", "Thank you for sharing your need.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
