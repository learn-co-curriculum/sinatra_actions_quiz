# Write your name here: 

class UsersController < Sinatra::Base
  # new
  get '/users/new' do 
    erb :new
  end

  # create
  post '/users' do 
    @user = User.create(params)
    redirect to "/users/#{@user.id}"
  end

  # show
  get '/user/:id' do 
    @user = User.find_by_id(params[:id])
    erb :show
  end

  # index
  get '/users' do 
    @users = User.all
    erb :index
  end

  # edit
  get '/users/:id/edit' do 
    @user = User.find_by_id(params[:id])
    erb :edit
  end

  # update
  patch '/users/:id' do
    @user = User.find_by_id(params[:id])
    @user.name = params[:name]
    # updates other attributes like above
    @user.save
    redirect to "/users/#{@user.id}"
  end
  
end

# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in 
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.