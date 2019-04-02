require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    new = Puppy.new(params[:name], params[:breed], params[:age])
    @name = new.name
    @breed = new.breed
    @age = new.months_old
    erb :display_puppy
  end

end
