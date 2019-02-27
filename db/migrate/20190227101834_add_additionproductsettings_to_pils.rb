class AddAdditionproductsettingsToPils < ActiveRecord::Migration[5.2]
  def change
    add_column :pils, :product, :string
    add_column :pils, :limit, :integer
    add_column :pils, :deliveryType, :string
    add_column :pils, :deliveryDate, :date
    add_column :pils, :deliveryAdress, :string
    add_column :pils, :dopDoc1, :boolean
    add_column :pils, :dopDoc2, :boolean
    add_column :pils, :isAccepted, :boolean
    add_column :pils, :isDeal, :boolean
    add_column :pils, :dealDate, :date
  end
end
