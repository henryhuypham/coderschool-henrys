class OrdersController < ApplicationController
  def place_order
    food_item = FoodItem.where(id: params[:food_item_id]).first

    @order = Order.new(
        user_name: params[:user_name],
        user_phone_number: params[:user_phone_number],
        address: params[:user_address],
        item_count: 1,
        food_item: food_item,
        total_cost: food_item.price + 20000
    )

    respond_to do |format|
      format.html { render 'orders/order_success' }
    end
  end
end
