class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :number
      t.string :segment_phone
      t.boolean :default
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
