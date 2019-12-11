module Stellar
  module Participant
    class Authenticate < Star

      vector :post, "/participant/authenticate"

      def post
        success({ success: true }.to_json)
      end

    end
  end
end
