# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  listing_id :integer
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ApplicationRecord
  validates :image_url,
            :listing_id, presence: true
  belongs_to :listing
end
