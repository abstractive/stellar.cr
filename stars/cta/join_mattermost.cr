module Stellar
  module CTA
    class JoinMattermost < Star
      vector :post, "/cta/join/mattermost"
      def post
        if payload = @request.data
          if body = render_template("slack/join_mattermost", payload)
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
