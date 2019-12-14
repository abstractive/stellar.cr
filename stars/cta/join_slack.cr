module Stellar
  module CTA
    class JoinSlack < Star
      vector :post, "/cta/join/slack"
      def post
        if payload = @request.data
          if body = render_template("slack/join_slack", payload)
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
