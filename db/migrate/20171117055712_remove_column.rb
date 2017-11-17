class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :characters, :game_id, :integer
  end
end
