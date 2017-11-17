class CreateCharactersGames < ActiveRecord::Migration[5.1]
  def change
    create_table :characters_games do |t|
      t.column :character_id, :integer
      t.column :game_id, :integer
    end
  end
end
