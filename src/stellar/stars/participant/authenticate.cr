module Stellar
  module Participant
    class Authenticate < Star

      vector :post, "/participant/authenticate"

      def post
        success({ "success" => true })
      end

    end
  end
end
