module Stellar
  class Test < Star

    vector :get, "/test"

    def get
      success("Test")
    end

  end
end
