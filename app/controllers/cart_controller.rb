# frozen_string_literal: true

# Controller for user cart
class CartController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
    @cart_items = current_user.cart_items
    @total_cost = 0
    @cart_items.each do |item|
      @total_cost += item.product.price.to_i * item.quantity
    end
  end
end
