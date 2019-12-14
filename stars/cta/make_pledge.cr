module Stellar
  module CTA
    class MakePledge < Star
      vector :post, "/cta/make/pledge"
      def post
        if payload = @request.data
          if body = render_template("slack/make_pledge", payload)
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
