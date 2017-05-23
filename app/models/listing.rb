# == Schema Information
#
# Table name: listings
#
#  id          :integer          not null, primary key
#  bedrooms    :integer
#  address     :string
#  start_date  :datetime
#  end_date    :datetime
#  price       :float
#  description :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Listing < ApplicationRecord
  validates :bedrooms,
            :address,
            :price,
            :start_date,
            :end_date,
            :description,
            :user_id, presence: true
            
  has_many :photos, :dependent => :destroy
  belongs_to :user
end
