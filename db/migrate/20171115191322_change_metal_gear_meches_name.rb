class ChangeMetalGearMechesName < ActiveRecord::Migration[5.1]
  def change
    rename_table :metal_gear_meches, :metal_gear_mechs
  end
end
