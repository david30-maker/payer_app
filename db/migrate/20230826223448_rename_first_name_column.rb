class RenameFirstNameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :players, :fisrt_name, :first_name
  end
end
