class RecipesController < ApplicationController
  def search_show
  end

  def search
    @recipes = Recipe.all_recipes(params[:search])
  end

  def index
  end

# need a controller method to bring up the form
# and then a controller method to submit form
end
