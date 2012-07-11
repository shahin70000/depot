class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :line_items, :dependent => :destroy

  def add_product(product_id)
    current_item = line_items.find_by_product_id(product_id)
    if current_item
      current_item.quantity += 1
    else
      ### this code from the book no longer works because of a change in
      ### rails mass assignment; the following two lines are replacing:
      ###current_item = line_items.build(product_id: product_id)
      ##current_item = line_items.build
      ##current_item.product_id = product_id

      # code rectified, no more mass assignment error:
      current_item = line_items.build(product_id: product_id)
    end
    current_item
  end

end
