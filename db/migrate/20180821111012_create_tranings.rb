class CreateTranings < ActiveRecord::Migration[5.2]
  def change
    create_table :tranings do |t|
      t.string :name
    end
  end
end
