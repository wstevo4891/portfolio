class AddImagesToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :cover, :string
    add_column :blog_posts, :images, :json
  end
end
