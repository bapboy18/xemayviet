class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.float :point

      t.timestamps null: false
    end
  end
end
