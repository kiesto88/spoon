class CreateRings < ActiveRecord::Migration
  def change
    create_table :rings do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :category

      t.timestamps
    end
  end
end
