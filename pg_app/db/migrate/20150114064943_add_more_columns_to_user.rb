class AddMoreColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :hungry, :boolean
    add_column :users, :lifestory, :text
  end
end
