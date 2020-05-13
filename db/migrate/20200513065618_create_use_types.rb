class CreateUseTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :use_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
