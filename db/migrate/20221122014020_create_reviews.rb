class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.integer :star_rating
    end
  end
end
