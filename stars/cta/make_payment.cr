module Stellar
  module CTA
    class MakePayment < Star
      vector :post, "/cta/make/payment"
      def post
        if payload = @request.data
          if body = render_template("slack/make_payment", payload)
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
