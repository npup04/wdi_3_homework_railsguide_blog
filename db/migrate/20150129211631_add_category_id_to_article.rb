class AddCategoryIdToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :name, :string
    add_reference :articles, :category, index: true
    add_foreign_key :articles, :categories
  end
end
