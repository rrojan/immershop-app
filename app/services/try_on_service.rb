# frozen_string_literal: true

# Service to interact with the try-on flask microservice
class TryOnService
  def self.call(product_id)
    HTTParty.get("http://localhost:5000/tryon/#{Product.find(product_id).try_on_link}")
  end
end
