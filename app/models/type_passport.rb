class TypePassport < ApplicationRecord
  has_many :passports, inverse_of: :type_passport, dependent: :destroy
  has_many :users, through: :passports

  accepts_nested_attributes_for :passports, reject_if: :all_blank, allow_destroy: true
end
