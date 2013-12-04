class AddColumnsToConsumers < ActiveRecord::Migration
  def change
    add_column :consumers, :provider, :string
    add_column :consumers, :uid, :string
    add_column :consumers, :name, :string
  end
end
