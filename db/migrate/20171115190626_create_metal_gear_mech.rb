class CreateMetalGearMech < ActiveRecord::Migration[5.1]
  def change
    create_table :metal_gear_meches do |t|
      t.column :name, :string
      t.column :game_id, :integer

      t.timestamps
    end
  end
end
