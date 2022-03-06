# frozen_string_literal: true

# Controller for the products resource
class ProductsController < ApplicationController
  before_action :set_product, only: %i[show]
  before_action :authenticate_user!, only: [:add_to_cart]

  def show; end

  def add_to_cart
    AddToCartService.call(current_user, params[:id].to_i, params[:quantity])
  end

  def buy
    AddToCartService.call(current_user, params[:id].to_i, params[:quantity])
    redirect_to cart_path
  end

  private

  def set_product
    @product = Product.find(params[:id].to_i)
  end
end
