class AddEmailToPils < ActiveRecord::Migration[5.2]
  def change
    add_column :pils, :email, :string
  end
end
