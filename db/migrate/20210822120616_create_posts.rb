class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :image
      t.integer :status, default: 0
      t.integer :created_user_id

      t.timestamps
    end
  end
end
