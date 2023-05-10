class CreateAnimations < ActiveRecord::Migration[6.1]
  def change
    create_table :animations do |t|
      
      t.string :anime_title
      t.string :original_author
      t.string :onair_date
      
      t.timestamps
    end
  end
end
