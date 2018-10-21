class Certificate < ApplicationRecord
  belongs_to :user
  belongs_to :type_certificate
  validates_presence_of :number
end
