# == Schema Information
#
# Table name: categories
#
#  id              :bigint           not null, primary key
#  front_page_rank :integer
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Category < ApplicationRecord
end
