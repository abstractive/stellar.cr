module Stellar
  module CTA
    class SendMessage < Star
      vector :post, "/cta/send/message"
      def post
        if !@payload.nil?
          slack_templated_message("cta_send_message")
          sendgrid_host_notice("cta_send_message", "A new message arrived.")
          sendgrid_guest_notice("cta_send_message", "Thank you for your message.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
