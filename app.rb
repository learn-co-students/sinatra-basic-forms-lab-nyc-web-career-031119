require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/puppy" do
    pup = Puppy.new(params)
    @age = pup.age
    @breed = pup.breed
    @name = pup.name
    erb :display_puppy
  end
end
