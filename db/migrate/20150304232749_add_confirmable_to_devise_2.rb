class AddConfirmableToDevise2 < ActiveRecord::Migration
  def change
  	add_column :students, :unconfirmed_email, :string
  end
end
