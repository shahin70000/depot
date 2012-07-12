class AddPriceToLineItem < ActiveRecord::Migration
  def up
    add_column :line_items, :price, :decimal
    LineItem.all.each do |li|
      li.price = li.product.price
    end
  end

  def down
    remove_column :line_items, :price
  end
end
