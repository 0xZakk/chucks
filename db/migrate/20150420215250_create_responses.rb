class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :quote
      t.integer :emotion
      t.string :zipcode
      t.string :gender
      t.string :poli_orientation
      t.timestamps null: false
    end
  end
end
