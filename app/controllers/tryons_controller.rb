# frozen_string_literal: true

# Controller for AJAX tryon requests (interfaces with Tryon microservice)
class TryonsController < ApplicationController
  def show
    TryOnService.call(params[:product_id])
  end
end
