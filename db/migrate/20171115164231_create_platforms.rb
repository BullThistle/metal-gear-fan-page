class CreatePlatforms < ActiveRecord::Migration[5.1]
  def change
    create_table :platforms do |t|
      t.column :console, :string

      t.timestamps
    end
  end
end
