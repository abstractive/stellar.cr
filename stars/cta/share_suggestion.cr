module Stellar
  module CTA
    class ShareSuggestion < Star
      vector :post, "/cta/share/suggestion"
      def post
        if payload = @request.data
          if body = render_template("slack/share_suggestion", payload)
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
