class ModifCity < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :city, foreign_key: true
    remove_column :patients, :city, foreign_key: true
  end
end
