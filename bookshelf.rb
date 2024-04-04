require 'sinatra/base'
require 'json'
require 'debug'

class BookshelfApp < Sinatra::Base
  get '/' do
    
    File.open("bookshelves.json") do |file|
      @hash=JSON.parse(file.read)
    end

    @name = @hash.dig("name")
    @location = @hash.dig("location")
    erb :home
  end

  get '/add' do 
    erb :add
  end

  post '/add' do
    hash = {name: params[:name],
            location: params[:location] }

    File.open("bookshelves.json","w") do |file|
      file.write JSON.pretty_generate(hash)
    end

    redirect "/"
  end
end

if __FILE__ == $0 # Don't run in tests
  BookshelfApp.run!
end
