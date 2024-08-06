class AddSalePriceToOrderItems < ActiveRecord::Migration[7.1]
  def change
    add_column :order_items, :sale_price, :decimal
  end
end
