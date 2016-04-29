class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
    	t.string :title
    	t.string :date
    	t.string :cover
    	t.text :body
    	t.json :images, array: true, default: []

      t.timestamps null: false
    end
  end
end
