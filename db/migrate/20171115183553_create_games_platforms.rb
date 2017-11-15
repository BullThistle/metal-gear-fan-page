class CreateGamesPlatforms < ActiveRecord::Migration[5.1]
  def change
    create_table :games_platforms do |t|
      t.column :game_id, :integer
      t.column :platform_id, :integer
    end
  end
end
