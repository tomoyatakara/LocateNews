class AddPublishedatToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :publishedAt, :datetime
  end
end
