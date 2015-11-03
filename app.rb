require 'sinatra/base'
require './models/link'

class Bookmark_manager < Sinatra::Base
  get '/' do
    'Hello Bookmark_manager!'
  end

  get '/links' do
    @links = Link.all
    erb(:'links/index')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
