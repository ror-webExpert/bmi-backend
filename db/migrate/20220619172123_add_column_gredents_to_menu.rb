class AddColumnGredentsToMenu < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :gradients , :string
  end
end
