class ClassSchedule < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  has_and_belongs_to_many :courses
end
