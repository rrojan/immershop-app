# == Schema Information
#
# Table name: categories
#
#  id              :bigint           not null, primary key
#  front_page_rank :integer
#  image_link      :string
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Category < ApplicationRecord
  validates :title, presence: true

  has_many :products
end
