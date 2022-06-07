class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.bigint "position"
      t.string "name"
      t.bigint "price"
      t.bigint "discount_price"
      t.timestamps
      t.references "category"
    end
  end
end
