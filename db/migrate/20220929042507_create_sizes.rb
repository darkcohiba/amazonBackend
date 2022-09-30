class CreateSizes < ActiveRecord::Migration[7.0]
  def change
    create_table :sizes do |t|
      t.string :size_name
      t.integer :size_number

      t.timestamps
    end
  end
end
