class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
    	t.string :genres
    	t.string :regions
    	t.integer :favorites
    	t.string :news_comments
      t.timestamps
    end
  end
end
