class ChangeMetalGearMechsName < ActiveRecord::Migration[5.1]
  def change
    rename_table :metal_gear_mechs, :mechs
  end
end
