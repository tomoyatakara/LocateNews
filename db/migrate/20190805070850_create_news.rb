class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
    	t.string :title
    	t.string :text
    	t.string :image
    	t.string :genres_id
    	t.string :regions_id
    	t.integer :favorites_id
    	t.string :news_comments_id
      t.string :image_id
      t.timestamps
    end
  end
end
