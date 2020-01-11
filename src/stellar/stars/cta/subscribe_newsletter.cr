module Stellar
  module CTA
    class SubscribeNewsletter < Star
      vector :post, "/cta/subscribe/newsletter"
      def post
        if !@payload.nil?
          slack_templated_message("cta_subscribe_newsletter")
          sendgrid_host_notice("cta_subscribe_newsletter", "A new newsletter subscription arrived.")
          sendgrid_guest_notice("cta_subscribe_newsletter", "Thank you for your newsletter subscription.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
