class CreateSiteUses < ActiveRecord::Migration[6.0]
  def change
    create_table :site_uses do |t|
      t.integer :site_id
      t.string :description
      t.integer :size_sqft
      t.integer :use_type_id

      t.timestamps
    end
  end
end
