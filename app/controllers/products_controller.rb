# frozen_string_literal: true

# Controller for the products resource
class ProductsController < ApplicationController
  before_action :set_product, only: %i[show]
  before_action :authenticate_user!, only: [:add_to_cart]

  def show; end

  def add_to_cart
    create_user_cart_item(params[:id].to_i, params[:quantity])
  end

  def buy
    create_user_cart_item(params[:id].to_i, params[:quantity])
    redirect_to cart_path
  end

  private

  def set_product
    @product = Product.find(params[:id].to_i)
  end

  def create_user_cart_item(id, quant)
    current_user.cart.cart_items.create(product_id: id, quantity: quant)
  end
end
