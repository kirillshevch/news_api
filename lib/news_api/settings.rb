module NewsApi
  class Settings
    extend ::Dry::Configurable

    setting :api_key, ''
  end
end
