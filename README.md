# NewsApi

An API wrapper for [News API v2](https://newsapi.org/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'news_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install news_api

## Configuration

Add setting with your [API key](https://newsapi.org/register).

```ruby
NewsApi::Settings.configure do |config|
  config.api_key = 'your_api_key'
end
```

## Usage

News API has 2 main [endpoints](https://newsapi.org/docs/endpoints) and 1 minor endpoint.

[Read more](https://newsapi.org/docs/endpoints) about required and available params.

Each request below returns instance of [ApiStruct::Entity](https://github.com/rubygarage/api_struct#entity)

### [Top headlines](https://newsapi.org/docs/endpoints/top-headlines)

```ruby
NewsApi::TopHeadliners.search(country: :us, pageSize: 2)
```

### [Everything](https://newsapi.org/docs/endpoints/everything)

```ruby
NewsApi::Everything.search(q: 'bitcoin', pageSize: 2)
```

### [Sources](https://newsapi.org/docs/endpoints/sources)

```ruby
NewsApi::Sources.search
```

## Errors handling

Each result respond on methods `.failure?` and '.success?'.

For example you have invalid API key:

```ruby
NewsApi::Settings.configure do |config|
  config.api_key = 'fail_key'
end

NewsApi::Sources.search
=> #<Hashie::Mash body=#<Hashie::Mash code="apiKeyInvalid" message="Your API key is invalid or incorrect. Check your key, or go to https://newsapi.org to create a free API key." status="error"> error=true status=#<HTTP::Response::Status 401 Unauthorized>>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kirillshevch/news_api.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
