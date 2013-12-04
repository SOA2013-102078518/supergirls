class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.text :description
      t.text :discussion

      t.timestamps
    end
  end
end
