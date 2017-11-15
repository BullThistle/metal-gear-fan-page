class ChangeMechsName < ActiveRecord::Migration[5.1]
  def change
    rename_table :mechs, :gears
  end
end
