class CocktailsController < ApplicationController
  def index
    # @cocktails = Cocktail.all
    @cocktail = Cocktail.new
    @pagy, @cocktails = pagy Cocktail.all

    respond_to do |format|
      format.html
      format.json {
        render json: { entries: render_to_string(partial: "cocktails", formats: [:html]), pagination: view_context.pagy_nav(@pagy) }
      }
    end
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
      redirect_to cocktail_path(@cocktail)
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
