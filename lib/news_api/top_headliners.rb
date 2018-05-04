module NewsApi
  class TopHeadliners < ApiStruct::Entity
    client_service NewsApi::Clients::TopHeadliners

    attr_entity :status, :'totalResults'

    has_entities :articles, as: NewsApi::Entities::Article
  end
end
