class Eliminapass < ActiveRecord::Migration
  def change
  	remove_column :students, :pass
  end
end
