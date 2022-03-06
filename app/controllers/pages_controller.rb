# frozen_string_literal: true

# Controller for generic pages for the site
class PagesController < ApplicationController
  def home
    @necklaces = Product.necklaces(limit: 4)
    @sunglasses = Product.sunglasses(limit: 4)
    @earrings = Product.earrings(limit: 4)
  end
end
