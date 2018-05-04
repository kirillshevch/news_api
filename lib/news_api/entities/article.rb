module NewsApi
  module Entities
    class Article < ApiStruct::Entity
      attr_entity :source, :author, :title, :description, :url,
                  :urlToImage, :publishedAt
    end
  end
end
