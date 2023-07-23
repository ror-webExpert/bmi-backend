class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialist
      t.text :qualification
      t.integer :experience
      t.text :service
      t.string :email
      t.string :phone_number
      t.string :hospital_address
      t.string :hospital_name
      t.string :clinic_name
      t.string :clinic_address
      t.string :time_schedule
      t.string :condition_treated

      t.timestamps
    end
    add_reference :doctors, :disease_type, null: false, foreign_key: true
  end
end
