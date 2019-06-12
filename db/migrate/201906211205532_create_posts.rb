class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   :title
      t.string   :slug
      t.string   :meta_title
      t.string   :meta_description
      t.date     :date
      t.string   :cover
      t.text     :description

      t.timestamps
    end

    create_table :sections do |t|
      t.belongs_to :post, index: true
      t.string     :header
      t.string     :image
      t.text       :body

      t.timestamps
    end
  end
end
