class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :titile
      t.text :content
      t.boolean :share
      t.references :user, index: true, foreign_key: true
      t.string :access_authority

      t.timestamps null: false
    end
  end
end
