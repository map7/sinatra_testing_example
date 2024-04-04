require 'sinatra/base'

class BookshelfApp < Sinatra::Base
  get '/' do 
    erb :home
  end

  get '/add' do 
    erb :add
  end
end

if __FILE__ == $0 # Don't run in tests
  BookshelfApp.run!
end
