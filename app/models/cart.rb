class Cart < ApplicationRecord
has_many :line_items, dependent: :destroy
# Method checks list of items already includes the product if so it adds 1 to the quantity, and if it doesn’t, it builds a new LineItem
def add_product(product)
  current_item = line_items.find_by(product_id: product.id)
  if current_item
    current_item.quantity += 1
  else
    current_item = line_items.build(product_id: product.id)
  end
  current_item
end

def total_price
line_items.to_a.sum { |item| item.total_price }
end

# Method to sum the total price for all the products in the cart
# this method is tied to the one in the line_item models need both.
def total_price
  line_items.to_a.sum {|item| item.total_price}
end



end
