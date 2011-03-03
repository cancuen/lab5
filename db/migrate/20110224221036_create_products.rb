class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :id
      t.string :title
      t.text :descripcion
      t.string :image_url
      t.decimal :price
      t.integer :projection
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
