class AddRefSpecialtyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :specialty, foreign_key: true
  end
end
