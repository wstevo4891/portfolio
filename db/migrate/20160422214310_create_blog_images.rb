class CreateBlogImages < ActiveRecord::Migration
  def change
    create_table :blog_images do |t|
      t.string :image
      t.references :blog_post, foreign_key: true

      t.timestamps null: false
    end
  end
end
