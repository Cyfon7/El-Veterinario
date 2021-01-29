class FixNameAndTypeOfColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :pet_histories, :heigth, :float
    rename_column :pet_histories, :heigth, :height
  end
end
