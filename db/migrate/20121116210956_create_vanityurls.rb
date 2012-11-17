class CreateVanityurls < ActiveRecord::Migration
  def change
    create_table :vanityurls do |t|
      t.string :name

      t.timestamps
    end
  end
end
