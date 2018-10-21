class Passport < ApplicationRecord
  belongs_to :user
  belongs_to :type_passport
  validates_presence_of :number
end
