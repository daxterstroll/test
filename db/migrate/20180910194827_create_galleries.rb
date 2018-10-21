class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :gallery_images

      t.timestamps
    end
  end
end
