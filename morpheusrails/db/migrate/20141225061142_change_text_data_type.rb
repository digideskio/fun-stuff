class ChangeTextDataType < ActiveRecord::Migration
  def change
    change_column(:quotes, :text, :text)
  end
end
