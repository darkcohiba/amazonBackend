class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :inventory
      t.string :description
      t.belongs_to :size, null: false, foreign_key: true
      t.belongs_to :color, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :manufacturer, null: false, foreign_key: true
      t.belongs_to :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
