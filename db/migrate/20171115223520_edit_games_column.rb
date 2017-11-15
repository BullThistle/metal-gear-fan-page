class EditGamesColumn < ActiveRecord::Migration[5.1]
  def change
    change_column(:games, :release, :date)
    change_column(:games, :release, :string)
  end
end
