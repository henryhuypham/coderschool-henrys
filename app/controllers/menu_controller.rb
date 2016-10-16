class MenuController < ApplicationController
  def index
    @food_items = Section.find_food_items(params[:section], params[:sort_column], params[:sort_direction])
  end
end
