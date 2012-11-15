class CreateShorteners < ActiveRecord::Migration
  def change
    create_table :shorteners do |t|
      t.string :original_url
      t.string :short_url
      t.timestamps
    end
  end
end
