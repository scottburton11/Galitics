$: << "." << "lib"

require 'multi_json'

module Galitics
  class << self
    attr_accessor :api_key
  end

  def self.client(api_key = api_key)
    Google::Analytics::Client.new(api_key)
  end

  def self.accounts
    MultiJson.load(client.get("management/accounts").body)['items'].map {|p| Google::Analytics::Management::Account.new(p) }
  end


  def self.data(params = {})
    MultiJson.load(client.get("data/ga", params).body)
  end
end

require 'galitics/google'
require 'galitics/google/analytics'
require 'galitics/google/analytics/client'
require 'galitics/google/analytics/management'