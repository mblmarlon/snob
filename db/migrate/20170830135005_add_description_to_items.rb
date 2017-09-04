class AddDescriptionToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :description, :text
    add_column :items, :price, :integer
  end
end
