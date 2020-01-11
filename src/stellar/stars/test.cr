module Stellar
  class Test < Star

    vector :get, "/test"

    def get
      success("Test within the <pre>stellar</pre> shard itself: #{Time.local.to_s("%Y-%m-%d %H:%M:%S.%6N")}")
    end

  end
end
