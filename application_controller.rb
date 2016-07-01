# Write your name here: 

class UsersController < Sinatra::Base
  # new
  get 'things/new' do
    erb :new
  end

  # create

  post '/things' do
    @thing = Thing.create(params)

    redirect 'things'
  end

  # show all the things
  get '/things' do
    @things = Thing.all

    erb :index
  end

  #show
  get 'things/:id' do
    @thing = Thing.find(params[:id])

    erb :show
  end

  # index
  get '/' do
    redirect :things
  end

  # edit (you have to add the method override thing for this in config.ru also)
  get '/things/:id/edit' do
    @thing = Thing.find(params[:id])

    erb :edit
  end

  # update
  patch '/things/:id' do
    @thing = Thing.find(params[:id])
    @thing.update(params)

    redirect '/things/#{@thing.id}'
  end
  
end

# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in 
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.
