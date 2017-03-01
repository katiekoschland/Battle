require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @name_one = params[:name_one]
    @name_two = params[:name_two]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
