class AddNewsToRegion < ActiveRecord::Migration[5.2]
  def change
    add_column :regions, :title, :string
    add_column :regions, :text, :string
    add_column :regions, :image, :string
    add_column :regions, :url, :string
    add_column :regions, :publishedAt, :datetime
  end
end
