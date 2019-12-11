module Stellar
  class Root < Star

    vector "/"

    def get
      redirect "/index.html"
    end

  end
end
