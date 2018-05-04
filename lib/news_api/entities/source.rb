module NewsApi
  module Entities
    class Source < ApiStruct::Entity
      attr_entity :id, :name, :description, :url, :category,
                  :language, :country
    end
  end
end
