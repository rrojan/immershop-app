# == Schema Information
#
# Table name: purchases
#
#  id             :bigint           not null, primary key
#  shipping_price :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_purchases_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Purchase < ApplicationRecord
  belongs_to :user
end
