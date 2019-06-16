class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :title
      t.string :code
      t.text :description
      t.text :body

      t.timestamps null: false
    end
  end
end
