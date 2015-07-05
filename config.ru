require 'sinatra/base'

module WatchBug
  class API < Sinatra::Base
    get '/hi' do
      "Hello World!"
    end
  end
end

run WatchBug::API
