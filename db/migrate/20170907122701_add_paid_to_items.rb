class AddPaidToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :paid, :boolean, null: false, default: false
  end
end
