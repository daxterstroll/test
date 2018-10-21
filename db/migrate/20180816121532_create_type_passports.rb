class CreateTypePassports < ActiveRecord::Migration[5.2]
  def change
    create_table :type_passports do |t|
      t.string :name
    end
  end
end
