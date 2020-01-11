module Stellar
  module CTA
    class MakePayment < Star
      vector :post, "/cta/make/payment"
      def post
        if !@payload.nil?
          slack_templated_message("cta_make_payment")
          sendgrid_host_notice("cta_make_payment", "A new payment commitment arrived.")
          sendgrid_guest_notice("cta_make_payment", "Thank you for your payment commitment.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
