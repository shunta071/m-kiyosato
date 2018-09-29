class Post < ApplicationRecord
  has_one_attached :image
  mount_uploader :image, ImageUploader
end
