module Stellar
  module CTA
    class RequestAnswer < Star
      vector :post, "/cta/request/answer"
      def post
        if payload = @request.data
          if body = render_template("slack/request_answer", payload)
            Stellar::Slack.message(body)
          end
          success({ success: true }.to_json)
        else
          puts "No payload."
        end
      end
    end
  end
end
