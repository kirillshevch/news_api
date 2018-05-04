
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'news_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'news_api'
  spec.version       = NewsApi::VERSION
  spec.authors       = ['Kirill Shevchenko']
  spec.email         = ['hello@kirillshevch.com']

  spec.summary       = 'An API wrapper for News API v2'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/kirillshevch/news_api'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'api_struct', '~> 0.1.0'
  spec.add_dependency 'dry-configurable', '~> 0.7.0'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.55.0'
end
