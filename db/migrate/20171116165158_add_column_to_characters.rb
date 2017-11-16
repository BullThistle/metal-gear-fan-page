class AddColumnToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :first_game, :text
    add_column :characters, :bio, :text

  end
end
