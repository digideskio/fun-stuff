class RenameColumnOnMoviesTable < ActiveRecord::Migration
  def change
    rename_column :movies,:title,:name
  end
end
