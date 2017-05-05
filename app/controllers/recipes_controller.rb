class RecipesController < ApplicationController
  #just the search page itself
  def search_show
  end
  #gets the actual info from the API 
  def search
    @recipes = Recipe.all_recipes(params[:search])
  end

  def index
  end

# need a controller method to bring up the form
# and then a controller method to submit form
end
