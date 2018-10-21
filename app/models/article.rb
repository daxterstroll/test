class Article < ApplicationRecord
  mount_uploader :images, ImagesUploader
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
end
