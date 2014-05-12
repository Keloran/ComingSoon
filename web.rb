require 'sinatra'
require 'haml'

set :bind, '0.0.0.0'

get '/' do
  haml :index
end