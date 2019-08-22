class AddNewsToGenre < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :title, :string
    add_column :genres, :text, :string
    add_column :genres, :image, :string
    add_column :genres, :url, :string
    add_column :genres, :publishedAt, :datetime
  end
end
