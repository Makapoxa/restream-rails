class AddStateFieldToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :state, :string, null: false, default: 'inactive'
  end
end
