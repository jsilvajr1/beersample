class CreateCellars < ActiveRecord::Migration[5.0]
  def change
    create_table :cellars do |t|
      t.string :beer
      t.text :description

      t.timestamps null: false
    end
  end
end
