# Write your name here: 

class UsersController < Sinatra::Base
  # new
  get 'users/new' do 
  	erb :new
	end


  # create
  post '/users' do 
  	@user = User.create(params)
  	redirect '/users'
  end

  # show
  get 'users/:id'
  @user = User.find_by_id(params[:id])
  	erb :show
  end

  # index
  get '/users' do 
  	@users = Users.all
  	erb :index 
  end

  # edit
  get '/users/:id/edit' do 
  	@user = User.find_by_id(params[:id])
  	erb :edit
  end

  # update - not that comfy with this one 
  get '/users/:id/update' do 
  @user = User.find_by_id(params[:id])
  erb :update 
  end 
  
end

# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in 
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.