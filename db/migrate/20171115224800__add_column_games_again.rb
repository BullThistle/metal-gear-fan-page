class AddColumnGamesAgain < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :story, :text
    add_column :games, :gameplay, :text
    add_column :games, :development, :text
  end
end
