class TypeCertificate < ApplicationRecord
  has_many :certificates, inverse_of: :type_certificate, dependent: :destroy
  has_many :users, through: :certificates

  accepts_nested_attributes_for :certificates, reject_if: :all_blank, allow_destroy: true
end