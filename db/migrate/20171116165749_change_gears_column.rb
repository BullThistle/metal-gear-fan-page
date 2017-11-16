class ChangeGearsColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :gears, :name, :gear_name

  end
end
