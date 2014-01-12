class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.text :description
      t.text :discussion
      t.integer :cate
      t.references :consumer
      t.integer :event_id
      t.integer :buy_id
      t.integer :favorite_id
      t.timestamps
    end
  end
end
