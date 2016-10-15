class MenuController < ApplicationController
  def index
    @food_items = Section.food_items(params[:section])
  end
end
