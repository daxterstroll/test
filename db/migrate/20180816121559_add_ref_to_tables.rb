class AddRefToTables < ActiveRecord::Migration[5.2]
  def change
    add_reference :passports, :user, foreign_key: true
    add_reference :passports, :type_passport, foreign_key: true
  end
end
