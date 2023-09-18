class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :fisrt_name
      t.string :last_name

      t.timestamps
    end
  end
end
