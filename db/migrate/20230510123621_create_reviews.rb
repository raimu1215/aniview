class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      
      t.integer :user_id
      t.integer :animation_id
      t.integer :genre_id
      t.string :star
      
      t.timestamps
    end
  end
end
