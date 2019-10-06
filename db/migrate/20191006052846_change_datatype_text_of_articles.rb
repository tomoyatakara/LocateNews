class ChangeDatatypeTextOfArticles < ActiveRecord::Migration[5.2]
  def change
    change_column :articles, :text, :text
  end
end
