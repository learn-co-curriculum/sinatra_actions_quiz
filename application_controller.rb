# Write your name here: 

class UsersController < Sinatra::Base
  # new
  get "/users/new" do 
    erb :new
  end

  # create
  post "/users" do 
    @user = User.create(params[:user])
    redirect "/users/#{user.id}" 
  end

  # show
  get "/users/:id"
    @user = User.find(params[:id])
    redirect :show

  # index
  get "/users"
    @users = User.all
    erb :index
  end

  # edit
  get "/users/:id/edit"
    erb :edit
  end

  # update MEEEEPPP forget. 
  patch "/users/:id" do
    @user = User.find(params[:id])
    #first I find it, I've recieved the params from edit so i update with them?? 
    @user.update(params)
    #then display the change
    redirect "/users/#{user.id}" 
  end

  
end

               
              



# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in 
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.