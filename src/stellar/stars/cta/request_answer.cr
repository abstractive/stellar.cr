module Stellar
  module CTA
    class RequestAnswer < Star
      vector :post, "/cta/request/answer"
      def post
        if !@payload.nil?
          slack_templated_message("cta_request_answer")
          sendgrid_host_notice("cta_request_answer", "A new question arrived.")
          sendgrid_guest_notice("cta_request_answer", "Thank you for your question.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
