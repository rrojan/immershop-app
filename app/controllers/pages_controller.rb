# frozen_string_literal: true

# Controller for generic pages for the site
class PagesController < ApplicationController
  def home
    @necklaces = Product.necklaces.first(4)
    @sunglasses = Product.sunglasses.first(4)
    @earrings = Product.earrings.first(4)
  end
end
