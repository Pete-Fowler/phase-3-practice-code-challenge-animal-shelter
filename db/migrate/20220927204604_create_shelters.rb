class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters |t| 
    t.string :name
    t.string :address
  end
end
