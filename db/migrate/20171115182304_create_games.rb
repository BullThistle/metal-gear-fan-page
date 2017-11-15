class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.column :name, :string
      t.column :release, :date

      t.timestamps
    end
  end
end
