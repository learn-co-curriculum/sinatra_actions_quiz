# Write your name here: 

class UsersController < Sinatra::Base
  # new
  get '/resources/new' do
    erb :'new.html'
  end

  # create
  post '/resources/new' do
    resource = Resource.create(params[:resource])
    redirect '/resources'
  end

  # show
  get '/resources/:id' do
    resource = Resource.find(params[:id])
    erb :'show.html'
  end

  # index
  get '/resources' do
    @resources = Resource.all
    erb :'index.html'
  end

  # edit
  get '/resources/:id/edit' do
    @resource = Resource.find(params[:id])
    erb :'edit.html'
  end

  # update
  patch '/resources/:id/edit' do
    resource = Resource.find(params[:id])
    resource.update(name: params[:name], etc etc)
    redirect "resources/#{resource.id}"
  end
  
end

# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in 
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.