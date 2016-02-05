class AddColumnsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :content, :text
    add_column :comments, :concert_id, :integer
  end
end
