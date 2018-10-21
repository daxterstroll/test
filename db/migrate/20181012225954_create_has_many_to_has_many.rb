class CreateHasManyToHasMany < ActiveRecord::Migration[5.2]
  def change
    create_table :class_schedules_courses, id: false do |t|
      t.belongs_to :class_schedule, index: true
      t.belongs_to :course, index: true
    end
  end
end
