# frozen_string_literal: true

# Service to add a cart item to current users cart
class AddToCartService
  def initialize(current_user, id, quant)
    @current_user = current_user
    @id = id
    @quant = quant.to_i
  end

  def self.call(current_user, id, quant)
    new(current_user, id, quant).add_to_cart
  end

  def add_to_cart
    cart_products = @current_user.cart_products.pluck(:id)
    return add_to_existing_cart_item if cart_products.include?(@id)

    create_new_cart_item
  end

  def add_to_existing_cart_item
    old_quantity = @current_user.cart.cart_items.find_by(product_id: @id).quantity
    @current_user.cart.cart_items.where(product_id: @id).update(quantity: old_quantity + @quant)
  end

  def create_new_cart_item
    @current_user.cart.cart_items.create(product_id: @id, quantity: @quant)
  end
end
