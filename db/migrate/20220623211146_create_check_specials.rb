class CreateCheckSpecials < ActiveRecord::Migration[7.0]
  def change
    create_table :check_specials do |t|
      t.string :title
      t.string :name
      t.string :description
      t.integer :position

      t.timestamps
    end
  end
end
