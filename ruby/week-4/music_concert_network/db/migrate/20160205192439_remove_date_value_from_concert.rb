class RemoveDateValueFromConcert < ActiveRecord::Migration
  def change
    remove_column :concerts, :date, :datetime
  end
end
