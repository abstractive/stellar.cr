module Stellar
  module CTA
    class RequestConsultation < Star
      vector :post, "/cta/request/consultation"
      def post
        if payload = @request.data
          if body = render_template("slack/request_consultation", payload)
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
