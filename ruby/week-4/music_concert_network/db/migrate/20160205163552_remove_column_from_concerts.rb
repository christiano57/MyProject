class RemoveColumnFromConcerts < ActiveRecord::Migration
  def change
    remove_column :concerts, :venure, :string
  end
end
