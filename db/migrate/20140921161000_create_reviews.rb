class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :description
      t.integer :restaurant_id, null: false

      t.timestamps
    end
  end
end
