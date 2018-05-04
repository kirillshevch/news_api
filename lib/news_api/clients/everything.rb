module NewsApi
  module Clients
    class Everything < ApiStruct::Client
      news_api :everything

      def search(**options)
        get(params: options)
      end
    end
  end
end
