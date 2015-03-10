class Eliminadni < ActiveRecord::Migration
  def change
  	remove_column :students, :dni
  end
end
