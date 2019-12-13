module Stellar
  module CTA
    class SendMessage < Star

      vector :post, "/cta/send_message"

      def post
        success({ success: true }.to_json)
      end

    end
  end
end
