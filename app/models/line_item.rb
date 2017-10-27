class LineItem < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :cart
  belongs_to :order, optional: true


  # Method to calculate the total price for "x" number of line products
  # this method is tied to the one in the carts models need both.
  def total_price
    product.price * quantity
  end

end
