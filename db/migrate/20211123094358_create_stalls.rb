class CreateStalls < ActiveRecord::Migration[6.0]
  def change
    create_table :stalls do |t|
      t.string :name
      t.integer :price_per_day
      t.text :description
      t.text :menu_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
