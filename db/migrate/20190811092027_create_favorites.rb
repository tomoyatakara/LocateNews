class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :name
      t.integer :user_id
      t.integer :news_image_id

      t.timestamps
    end
  end
end