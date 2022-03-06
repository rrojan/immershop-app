# frozen_string_literal: true

# Controller for the products resource
class ProductsController < ApplicationController
  before_action :set_product, only: %i[show buy]

  def show; end

  def add_to_cart; end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
