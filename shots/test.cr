module Stellar
  class Test < Artillery::Shot

    vector :get, "/test"

    def get
      success("Test")
    end

  end
end
