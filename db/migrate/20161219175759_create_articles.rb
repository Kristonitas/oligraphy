class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :issue_id
      t.integer :order

      t.timestamps
    end
  end
end
