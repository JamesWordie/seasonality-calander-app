class MonthsController < ApplicationController
  def index
    @months = Month.all
  end

  def show
    @month = Month.find(params[:id])
    @categories = Category.all
  end

  private

  def strong_params
    params.require(:month).permit(:name, :season)
  end
end
