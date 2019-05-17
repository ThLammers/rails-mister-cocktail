class CocktailsController < ApplicationController

  def index
  @cocktails = Cocktail.all
  end

  # GET /gardens/1
  def show
    @cocktail = Cocktail.find([:id])
  end

  # GET /gardens/new
  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    #create new instance
    #needs a name and
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
