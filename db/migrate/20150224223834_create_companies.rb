class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      
      t.string :name
      t.string :contact_phone
      t.string :contact_person
      t.string :city
      t.timestamps null: false
    end
  end
end
