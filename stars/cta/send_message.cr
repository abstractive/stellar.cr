module Stellar
  module CTA
    class SendMessage < Star
      vector :post, "/cta/send/message"
      def post
        if payload = @request.data
          if body = render_template("slack/send_message", payload)
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
