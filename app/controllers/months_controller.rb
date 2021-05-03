class MonthsController < ApplicationController
  def index
    @months = Month.all
    # if params[:query].present?
    #   @ingredients = Ingredient.search_by_ingredient_name(params[:query])
    # else
    #   @ingredients = Ingredient.all
    # end
  end

  def show
    @month = Month.find(params[:id])
  end

  private

  def strong_params
    params.require(:month).permit(:name, :season)
  end
end
