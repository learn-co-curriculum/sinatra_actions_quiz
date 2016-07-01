# Write your name here: Emanuel Aharonoff
#I assume that in the views that namespacing was used

class UsersController < Sinatra::Base
  # index
  get '/users' do
    @users = User.all
    erb :index 
  end
  # new
  get '/users/new' do 
    erb :'users/new'
  end
  # create
  post '/users' do 
    @user = User.create(params[:user])
    redirect to '/users/#{@user.id}'
  end
  # show
  get '/users/:id' do 
    erb :'users/show' 
  end
  # edit
  get '/users/:id/edit' do 
    @user = User.find(params[:id])
    erb :'users/edit'
  end
  # update
  post '/users/:id' do 
    @user = User.find(params[:id])
    @user.update(params[:user])
    redirect to '/users/#{@user.id}'
  end
  
end

# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in 
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.