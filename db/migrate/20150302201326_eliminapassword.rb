class Eliminapassword < ActiveRecord::Migration
  def change
  	remove_column :students, :password_digest
  end
end
