# Write your name here:

class UsersController < Sinatra::Base
  # new
  get '/recipes/new' do
    erb :new
  end
  # create
  post '/recipes' do
    @recipe =Recipe.create(params)
    redirect to '/recipes/#{@recipe.id}'
  end
  # show
  get '/recipes/:id' do
    @recipe= Recipe.find(params[:id])
    erb :show
  end

  # index
  get '/recipes' do
    @allrecipes= Recipe.all
    erb :index
  end

  # edit
  get '/recipes/:id/edit'
    @recipe= Recipe.find(params[:id])
    erb :edit
  end


  # update
  patch '/recipes/:id' do
    @recipe= Recipe.find_by_id(parmas[:id])
    @recipe.title=params[:title]
    @recipe.content=parmas[:content]
    @recipe.save
    redirect to "/recipes/#{@recipe.id}"
  end

end

# Fork this code make a pull request

# Write in all of the restful actions (except for destroy).

# You should write the code exactly as you would in
# a normal sinatra codebase.  This means act on the params as you normally would
# render and redirect as you normally would in a sinatra application.
