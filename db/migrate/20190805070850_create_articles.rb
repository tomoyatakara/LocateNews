class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
    	t.string :title
    	t.string :text
    	t.string :image
    	t.string :genre_id
    	t.string :region_id
    	t.integer :favorite_id
    	t.string :article_comment_id
      t.integer :user_id
      t.timestamps
    end
  end
end
