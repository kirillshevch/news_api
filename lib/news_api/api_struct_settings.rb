ApiStruct::Settings.configure do |config|
  config.endpoints = {
    news_api: {
      root: 'https://newsapi.org/v2',
      headers: {
        'X-Api-Key': NewsApi::Settings.config.api_key
      }
    }
  }
end
