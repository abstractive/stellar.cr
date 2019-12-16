module Stellar
  module CTA
    class MakeContribution < Star
      vector :post, "/cta/make/contribution"
      def post
        if @payload
          slack_templated_message("cta_make_contribution")
          sendgrid_host_notice("cta_make_contribution", "A new contribution commitment arrived.")
          sendgrid_guest_notice("cta_make_contribution", "Thank you for your contribution commitment.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
