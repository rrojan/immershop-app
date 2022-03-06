# frozen_string_literal: true

# Controller for user cart
class CartController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
    @cart_items = current_user.cart_items
  end
end
