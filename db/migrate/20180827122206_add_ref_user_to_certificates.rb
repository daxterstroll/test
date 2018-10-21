class AddRefUserToCertificates < ActiveRecord::Migration[5.2]
  def change
    add_reference :certificates, :user, foreign_key: true
  end
end
