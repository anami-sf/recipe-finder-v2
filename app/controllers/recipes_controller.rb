class RecipesController < ApplicationController
  def index
    @search_term = params[ :looking_for] || "chocolate"
    # This is a hash of recipes containing a hash of fields.
    @recipes = Recipe.for(@search_term) 
  end
end
