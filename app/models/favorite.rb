class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :post_image
  
  validates :user_id, uniqueness: {scope: :post_images_id}
  
end
