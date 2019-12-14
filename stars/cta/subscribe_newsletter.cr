module Stellar
  module CTA
    class SubscribeNewsletter < Star
      vector :post, "/cta/subscribe/newsletter"
      def post
        if payload = @request.data
          if body = render_template("slack/subscribe_newsletter", payload)
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
