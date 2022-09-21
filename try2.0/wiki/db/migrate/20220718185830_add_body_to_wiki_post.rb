class AddBodyToWikiPost < ActiveRecord::Migration[6.1]
  def change
    add_column :wiki_posts, :body, :string
  end
end
