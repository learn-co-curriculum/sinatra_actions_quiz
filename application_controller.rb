# Write your name here: 

class UsersController < Sinatra::Base
  # new
  get '/users/new' do
    erb :users_new
  end

  # create
  get '/users/create' do
    @user = User.create(params)
    erb :user
  end

  # show
  get '/users/:id' do
    @show_user = users.find_by(params[:id])
    erb :show_user
  end

  # index

  get '/users' do
    @all_users = User.all
    erb :all_users
  end

  # edit

  # update
  
end

# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in 
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.