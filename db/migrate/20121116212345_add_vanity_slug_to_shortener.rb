class AddVanitySlugToShortener < ActiveRecord::Migration
  def change
    add_column :shorteners, :vanity_slug, :string
  end
end
