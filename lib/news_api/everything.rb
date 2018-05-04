module NewsApi
  class Everything < ApiStruct::Entity
    client_service NewsApi::Clients::Everything

    attr_entity :status, :'totalResults'

    has_entities :articles, as: NewsApi::Entities::Article
  end
end
