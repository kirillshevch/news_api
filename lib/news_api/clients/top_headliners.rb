module NewsApi
  module Clients
    class TopHeadliners < ApiStruct::Client
      news_api :'top-headlines'

      def search(**options)
        get(params: options)
      end
    end
  end
end
