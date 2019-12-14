module Stellar
  module CTA
    class RequestAccess < Star
      vector :post, "/cta/request/access"
      def post
        if payload = @request.data
          if body = render_template("slack/request_access", payload)
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
