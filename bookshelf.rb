require 'sinatra/base'

class BookshelfApp < Sinatra::Base
  get '/' do 
    "Bookshelf<button>New Bookshelf</button>"
  end
end

if __FILE__ == $0 # Don't run in tests
  BookshelfApp.run!
end
