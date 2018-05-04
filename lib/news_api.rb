require 'news_api/version'
require 'api_struct'
require 'dry-configurable'

require 'news_api/settings'
require 'news_api/api_struct_settings'

require 'news_api/clients/top_headliners'
require 'news_api/clients/everything'
require 'news_api/clients/sources'

require 'news_api/entities/article'
require 'news_api/entities/source'

require 'news_api/everything'
require 'news_api/top_headliners'
require 'news_api/sources'

module NewsApi
end
