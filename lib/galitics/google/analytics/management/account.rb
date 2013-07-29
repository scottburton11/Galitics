module Galitics
  module Google
    module Analytics
      module Management
        class Account

          attr_reader :attrs
          def initialize(attrs = {})
            @attrs = attrs
          end

          def id
            attrs['id']
          end

          def web_properties
            MultiJson.load(Galitics.client.get("management/accounts/#{id}/webproperties").body)['items'].map { |p| WebProperty.new(p) }
          end
        end
      end
    end
  end
end
