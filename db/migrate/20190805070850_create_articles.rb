class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
    	t.string :title
    	t.string :text
    	t.string :image
    	t.string :genres_id
    	t.string :regions_id
    	t.integer :favorites_id
    	t.string :article_comments_id
      t.string :image_id
      t.timestamps
    end
  end
end
