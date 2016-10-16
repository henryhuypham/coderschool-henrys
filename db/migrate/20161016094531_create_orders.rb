class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :user_phone_number
      t.string :address
      t.string :total_cost
      t.references :food_item, foreign_key: true
      t.integer :item_count

      t.timestamps
    end
  end
end
