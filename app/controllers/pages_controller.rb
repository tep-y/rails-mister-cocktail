class PagesController < ApplicationController
  def home
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end
end
