# Write your name here: 

class UsersController < Sinatra::Base
  # new

  get '/users/new' do 
  	erb :new
  end
  # create

  post '/users/new' do
  	@user = User.create(params)
  	erb :show
  end

  # show
  get '/users/:id' do
  	@user = User.find(params[:id])
  	erb :show
  end

  # index
  get '/users' do
  	@users = User.all
  	erb :index
  end

  # edit
  get 'users/:id/edit' do
  	@user = User.find(params[:id])
  	erb :edit
  end

  # update
  patch 'user/:id/edit' do
  	@user = User.find(params[:id])
  	@user.update(params)
  	erb :show
  end
  
end

# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in 
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.