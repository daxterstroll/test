class CreateCertificates < ActiveRecord::Migration[5.2]
  def change
    create_table :certificates do |t|
      t.references :type_certificate, foreign_key: true
      t.string :number
    end
  end
end
