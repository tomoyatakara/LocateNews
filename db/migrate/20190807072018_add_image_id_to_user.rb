class AddImageIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :articles, :string
  end
end
