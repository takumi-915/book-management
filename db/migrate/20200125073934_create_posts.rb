class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.float :review
      t.text :content
      t.text :image
      # t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
