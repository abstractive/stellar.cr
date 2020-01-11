require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class SendMessage < Star
      include CallToAction
      vector :post, "/cta/send/message"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_send_message")
          SendGrid.host_notice(@payload, "cta_send_message", "A new message arrived.")
          SendGrid.guest_notice(@payload, "cta_send_message", "Thank you for your message.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
