# Write your name here: 
#Clark Sacktor

class UsersController < Sinatra::Base
  # new
  #displays the form for a creation
  get 'users/new' do 
    erb :new
  end 

  # create this creates a new instance based off of the params 
  post '/users/' do 
    @user = User.create(params)
    redirect to 'user/#{@user.id}'
  end 

  # show This displays an insance 
  get 'users/:id' do 
    @user = User.find(params[:id])
    erb :show
  end 

  # index This shows all the users 
  get '/users/' do 
    @users = User.all
    erb :index
  end 


  # edit This displays the form so the user can update
  get '/users/:id/edit' do 
    @user = User.find(params[:id])
    erb :edit
  end 

  # update This updates the user
    post 'users/:id' do 
    @user = User.find(params[:id])
    @user.update(params)
    redirect to 'user/#{@user.id}'
  end 
  
end

# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in 
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.