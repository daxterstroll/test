class CreatePassports < ActiveRecord::Migration[5.2]
  def change
    create_table :passports do |t|
      t.string :number
    end
  end
end
