# Write your name here: Todd Rizley

class UsersController < Sinatra::Base
  # new

  get '/models/new' do
    erb :'/models/new'
  end

  # create
  post '/models' do 
    @model = Model.find(params[:id])
    redirect to "/models/#{@model.id}"
  end


  # show
  get '/models/:id' do 
    @model = Model.find(params[:id])
    erb :'/models/show'
  end

  # index
  get '/models' do 
    @models = Model.all 
    erb :'/models/index'
  end

  # edit
  get '/models/:id/edit' do 
    @model = Model.find(params[:id])
    erb :'/models/edit'
  end


  # update

  patch '/models/:id' do
    @model = Model.find(params[:id])
    @model.update(params[@model.id])
    redirect to "/models/#{@model.id}"
  end
  
end

# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in 
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.