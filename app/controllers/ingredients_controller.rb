class IngredientsController < ApplicationController
  def index
    @months = Month.all
    @categories = Category.all
    if params[:query].present?
      @ingredients = PgSearch.multisearch(params[:query])
    else
      @ingredients = Ingredient.all
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @month = Month.find(params[:month_id])
  end

  private

  def strong_params
    params.require(:ingredient).permit(:name, :month_id)
  end
end
