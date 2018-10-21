class Gallery < ApplicationRecord
  mount_uploader :gallery_images, GalleryImagesUploader
  validates :name, :gallery_images, presence: true
end
