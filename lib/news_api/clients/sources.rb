module NewsApi
  module Clients
    class Sources < ApiStruct::Client
      news_api :sources

      def search(**options)
        get(params: options)
      end
    end
  end
end
