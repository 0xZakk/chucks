class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :quote
      t.belongs_to :emotion
      t.timestamps null: false
    end
  end
end
