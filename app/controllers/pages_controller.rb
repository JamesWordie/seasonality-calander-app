class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @month = Month.find_by(name: Date.today.strftime('%B'))
    @categories = Category.all
  end
end
