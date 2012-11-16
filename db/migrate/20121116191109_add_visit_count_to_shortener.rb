class AddVisitCountToShortener < ActiveRecord::Migration
  def change
    add_column :shorteners, :visit_count, :integer, :default => 0
  end
end
