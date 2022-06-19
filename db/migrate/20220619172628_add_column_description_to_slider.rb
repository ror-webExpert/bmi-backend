class AddColumnDescriptionToSlider < ActiveRecord::Migration[7.0]
  def change
    add_column :sliders, :description , :string
  end
end
