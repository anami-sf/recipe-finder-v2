class RecipesController < ApplicationController
  def index
    @search_term = params[:looking_for] || "chocolate"
    # This is a hash of recipes containing a hash of fields.
    @http_object = Recipe.for(@search_term)
    @recipes = @http_object["recipes"]
  end
end




