module Stellar
  abstract class Star < Artillery::Shot

    include Templates
    include CTA

    property payload : Hash(String, JSON::Any)

    def initialize(shell)
      super(shell)
      @payload = @request.data
    end

    def error_payload_missing
      error(400, "Bad Request: No payload.")
    end
  end
end