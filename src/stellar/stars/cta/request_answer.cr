require "../../../stellar"
require "../../mixins/call_to_action"

module Stellar
  module CTA
    class RequestAnswer < Star
      include CallToAction
      vector :post, "/cta/request/answer"
      def post
        if !@payload.nil?
          Slack.templated_message(@payload, "cta_request_answer")
          SendGrid.host_notice(@payload, "cta_request_answer", "A new question arrived.")
          SendGrid.guest_notice(@payload, "cta_request_answer", "Thank you for your question.")
          success({ "success" => true })
        else
          error_payload_missing
        end
      end
    end
  end
end
