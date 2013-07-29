module Galitics
  module Google
    module Analytics
      module Management
        class Profile

          attr_reader :attrs
          def initialize(attrs = {})
            @attrs = attrs
          end

          def id
            attrs['id']
          end

          # def profiles
          #   MultiJson.load(Galitics.client.get("management/accounts/#{account_id}/webproperties/#{id}").body)['items'].map { |p| Profile.new(p) }
          # end
        end
      end
    end
  end
end
