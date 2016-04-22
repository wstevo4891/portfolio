class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
    	t.string :title
    	t.string :date
    	t.string :body

      t.timestamps null: false
    end
  end
end
