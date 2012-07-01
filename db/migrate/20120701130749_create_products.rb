class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :imag_url
      t.decimal :price, precision: 8, scale: 2
      t.timestamps
    end
  end
end
