module Stellar
  module CTA
    class RequestContact < Star
      vector :post, "/cta/request/contact"
      def post
        if payload = @request.data
          if body = render_template("slack/request_contact", payload)
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
