class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :name
      t.integer :user_id
      t.integer :article_image_id
      t.integer :article_id
      t.timestamps
    end
  end
end
