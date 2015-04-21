class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :quote
      t.has_one :emoji_id
      t.string :zipcode
      t.sting :gender
      t.string :poli_orientation
      t.timestamps null: false
    end
  end
end
