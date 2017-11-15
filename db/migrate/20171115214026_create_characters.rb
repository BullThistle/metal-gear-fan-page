class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.column :name, :string
      t.column :game_id, :integer

      t.timestamps
    end
  end
end
