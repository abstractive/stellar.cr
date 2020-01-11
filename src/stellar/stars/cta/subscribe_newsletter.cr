require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class SubscribeNewsletter < Star
      include CallToAction
      vector :post, "/cta/subscribe/newsletter"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_subscribe_newsletter")
          SendGrid.host_notice(@payload, "cta_subscribe_newsletter", "A new newsletter subscription arrived.")
          SendGrid.guest_notice(@payload, "cta_subscribe_newsletter", "Thank you for your newsletter subscription.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
