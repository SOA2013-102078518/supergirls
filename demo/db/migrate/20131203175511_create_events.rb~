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
      t.timestamps
    end
  end
end
