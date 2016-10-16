class MenuController < ApplicationController
  def index
    @food_items = Section.retrieve_food_items(params[:section], params[:sort_column], params[:sort_direction])
  end

  def search
    @food_items = Section.search_food_item(params[:search_term])

    respond_to do |format|
      format.html { render 'menu/index' }
    end
  end
end
