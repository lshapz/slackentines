require 'sinatra/base'

module SlackComplimentBot
  class Web < Sinatra::Base
    get '/' do
      'I <3 you.'
    end

    get '/foo' do 
      'Why does this not work'
    end 
  end
end
