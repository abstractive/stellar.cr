module Stellar
  module CTA
    class RequestBid < Star
      vector :post, "/cta/request/bid"
      def post
        if payload = @request.data
          if body = render_template("slack/request_bid", payload)
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
