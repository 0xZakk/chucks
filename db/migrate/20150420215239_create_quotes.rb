class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :category
      t.string :topic
      t.text :body
      t.string :author
      t.text :location
      t.string :date
      t.timestamps null: false
    end
  end
end
