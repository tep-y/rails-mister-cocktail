class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
    # @all = @cocktails.map { |c| c.name.capitalize }
    # @cocktails_all = @all.sort
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to root_path(anchor: 'cocktails')
    else
      flash[:cocktail_errors] = @cocktail.errors.full_messages
      redirect_to root_path(anchor: 'share')
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :ingredient, :description, :alcohol)
  end
end
