Gem::Specification.new do |s|
  s.name        = 'galitics'
  s.version     = '0.0.1'
  s.date        = '2013-09-29'
  s.summary     = "lightweight Google Analytics client"
  s.description = "lightweight Google Analytics REST client"
  s.authors     = ["Scott Burton"]
  s.email       = 'scott.burton@hyfn.com'
  s.files       = %w{ 
    lib/galitics.rb 
    lib/galitics/google.rb 
    lib/galitics/google/analytics.rb
    lib/galitics/google/analytics/client.rb
  }
  s.add_dependency "faraday"
end