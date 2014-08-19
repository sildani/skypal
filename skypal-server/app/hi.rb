require "sinatra/base"

class Hi < Sinatra::Base
  get '/hi' do
    "Hello, World"
  end
end
