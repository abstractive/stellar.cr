module Stellar
  module CTA
    class JoinGitLab < Star
      vector :post, "/cta/join/gitlab"
      def post
        if payload = @request.data
          if body = render_template("slack/join_gitlab", payload)
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
