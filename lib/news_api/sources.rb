module NewsApi
  class Sources < ApiStruct::Entity
    client_service NewsApi::Clients::Sources

    attr_entity :status

    has_entities :sources, as: NewsApi::Entities::Source
  end
end
