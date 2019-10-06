class ChangeDatatypeImageOfArticles < ActiveRecord::Migration[5.2]
  def change
    change_column :articles, :image, :text
    change_column :articles, :url, :text
  end
end
