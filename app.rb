require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    @new_pup = Puppy.new(:name, :breed, :months_old)
    erb :create_puppy
  end

  post '/puppy/id' do
    @new_pup = Puppynfind(params[:id])
    erb :display_puppy
  end
end
