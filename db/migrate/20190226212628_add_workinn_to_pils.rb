class AddWorkinnToPils < ActiveRecord::Migration[5.2]
  def change
    add_column :pils, :workinn, :string
  end
end
