module Stellar
  module CTA
    class MakeContribution < Star
      vector :post, "/cta/make/contribution"
      def post
        if payload = @request.data
          if body = render_template("slack/make_contribution", payload)
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
