require 'sinatra/base'

class BookshelfApp < Sinatra::Base
  get '/' do 
    
  end
end

if __FILE__ == $0 # Don't run in tests
  BookshelfApp.run!
end
