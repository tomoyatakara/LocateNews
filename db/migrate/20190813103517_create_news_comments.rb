class CreateNewsComments < ActiveRecord::Migration[5.2]
  def change
    create_table :news_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :news_id

      t.timestamps
    end
  end
end
