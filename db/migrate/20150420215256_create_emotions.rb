class CreateEmotions < ActiveRecord::Migration
  def change
    create_table :emotions do |t|
      t.string :title
      t.text :url
      t.integer  :response_id
      t.timestamps null: false
    end
  end
end
