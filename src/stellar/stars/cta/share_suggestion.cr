module Stellar
  module CTA
    class ShareSuggestion < Star
      vector :post, "/cta/share/suggestion"
      def post
        if !@payload.nil?
          slack_templated_message("cta_share_suggestion")
          sendgrid_host_notice("cta_share_suggestion", "A new suggestion arrived.")
          sendgrid_guest_notice("cta_share_suggestion", "Thank you for sharing your suggestion.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
