module Stellar
  module CTA
    class MakePledge < Star
      vector :post, "/cta/make/pledge"
      def post
        if !@payload.nil?
          slack_templated_message("cta_make_pledge")
          sendgrid_host_notice("cta_make_pledge", "A new pledge commitment arrived.")
          sendgrid_guest_notice("cta_make_pledge", "Thank you for your pledge commitment.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
