class CreateWhyChooseOurRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :why_choose_our_restaurants do |t|
      t.string :title
      t.string :description
      t.integer :position

      t.timestamps
    end
  end
end
