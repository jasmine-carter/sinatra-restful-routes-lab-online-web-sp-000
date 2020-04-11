class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  #redirects to index
  get '/' do
    redirect '/recipes'
  end

  #index action
  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  #show form for new recipe
  get '/recipes/new' do
    erb :new_recipe
  end

  #show specific recipe
  post '/recipes/:id' do
    #will show a newly created recipe OR recipe of a specific id
  end

end
