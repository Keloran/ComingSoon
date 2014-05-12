require 'sinatra'
require 'haml'
require 'twitter'

set :bind, '0.0.0.0'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "GfKMNk5CrFBC6t8cBmtyQiWho"
  config.consumer_secret     = "Ir4Jj8leIKoxt9dk9DmgUPNCxzkgWGEzJkX3TpyKbySTbgUSNJ"
  config.access_token        = "2449575319-0hwDFu90p1uGVfs8UvTKmREAwIyP0RDFF56Pd50"
  config.access_token_secret = "8pHdszTOjHDqxDFHAs2QJV6fJ9hwQRLReS0lCf9Oy3q1D"
end

get '/' do
  haml :index, :locals => {:client => client}
end