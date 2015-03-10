class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|	
      t.belongs_to :company
      t.string :name
      t.string :description
      t.timestamps null: false
    end
  end
end
