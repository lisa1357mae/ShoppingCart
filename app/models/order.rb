class Order < ApplicationRecord
  # Ensures line items that belong to an order are to be destroyed
  # whenever the order is destroyed
  has_many :line_items, dependent: :destroy
  # Validate that payment information is submitted
  validates :name, :address, :email, presence: true
  

  enum pay_type: {
    "Pay-pal"  => 0,
    "Credit Card" => 1
  }

  # For each item we transfer from the cart to order:
  # 1. set the cart_id = nil thusly prevent the item from being destroied
  # when we destroy the cart.
  # 2. Add the item itself to the line_items collection for the order
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart.id = nil
      line_items << item
    end
  end
end
