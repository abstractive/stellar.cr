module Stellar
  class Test < Star

    vector :get, "/test"

    def get
      success("Test from #{Process.executable_path}: #{Time.local.to_s("%Y-%m-%d %H:%M:%S.%6N")}")
    end

  end
end
