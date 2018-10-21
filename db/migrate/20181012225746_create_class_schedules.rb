class CreateClassSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :class_schedules do |t|
      t.string :attachment

      t.timestamps
    end
  end
end
