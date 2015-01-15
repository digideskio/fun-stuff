class RenameLifestoryColumn < ActiveRecord::Migration
  def change
    rename_column :users,:lifestory,:life_story
  end
end
