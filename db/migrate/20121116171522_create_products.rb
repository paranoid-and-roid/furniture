class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :item
      t.string :specifications
      t.string :wood_used
      t.string :designer
      t.float :price, precision: 8, scale: 2
      t.string :image_url

      t.timestamps
    end
  end
end
