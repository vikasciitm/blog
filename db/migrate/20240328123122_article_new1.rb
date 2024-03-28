class ArticleNew1 < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :first_name, :string
  end
end
