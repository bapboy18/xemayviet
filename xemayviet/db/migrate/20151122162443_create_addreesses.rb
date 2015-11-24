class CreateAddreesses < ActiveRecord::Migration
  def change
    create_table :addreesses do |t|
      t.string :description
      t.float :lng
      t.float :lat
      t.string :address
      t.string :type
      t.float :rate

      t.timestamps null: false
    end
  end
end
