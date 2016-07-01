# Write your name here: 
#assuming the object is owners

class UsersController < Sinatra::Base
  # new
  get '/owners/new' do
    erb :new #a new erb will have a form where the user submits information on the object
  end

  # create
  post '/owners' do
    @owner = Owner.create(params)
    redirect to '/owners/#{params[:id]}'
  end


  # show
  get '/owners/:id' do
    @owner = Owner.find(params[:id])
    erb :show #a new show erb will print the attributes of the object
  end

  # index
  get '/owners' do
    @owner = Owners.all
    erb :index
  end

  # edit
  get '/owners/:id/edit' do
    @owner = Owner.find(params[:id])
    erb :edit
  end

  #update
  patch 'owners/:id' do #remember to do the method override on post
    @owner = Owner.find(params[:id])
    @owner.name = params[:name]
    @owner.pets = params[:pets]
    @owner.save
    erb :show
  end

  
end

# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in 
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.