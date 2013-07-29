require 'faraday'

module Galitics
  module Google
    module Analytics
      class Client

        attr_reader :auth_token
        def initialize(auth_token)
          @auth_token = auth_token
        end

        def get(path, options={}, &blk)
          connection.get(path, options, &blk)
        end

        def connection
          Faraday.new do |connection|
            connection.authorization :Bearer, auth_token
            connection.url_prefix = "https://www.googleapis.com/analytics/v3"
            connection.adapter Faraday.default_adapter
          end
        end
      end
    end
  end
end
