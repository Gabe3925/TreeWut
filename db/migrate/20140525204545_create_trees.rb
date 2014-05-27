class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :name

      t.references :user

      t.string :species
      t.string :location_url
      t.string :image_data
      t.string :description
      t.string :setting

      t.integer :fame
      t.integer :age
      t.integer :height
      t.integer :circumference

      t.boolean :has_fruit
      t.boolean :public
    end
  end
end
