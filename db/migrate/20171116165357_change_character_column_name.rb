class ChangeCharacterColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :characters, :name, :char_name

  end
end
