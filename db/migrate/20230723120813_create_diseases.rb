class CreateDiseases < ActiveRecord::Migration[7.0]
  def change
    create_table :diseases do |t|
      t.string :name
      t.text :disadvantage
      t.text :solution
      t.text :description
      t.text :control_problem
      t.string :short_description

      t.timestamps
    end

    add_reference :diseases, :disease_type, null: false, foreign_key: true
  end
end
