class AddDateValueToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :date, :date
  end
end
