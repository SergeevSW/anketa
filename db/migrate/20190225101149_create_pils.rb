class CreatePils < ActiveRecord::Migration[5.2]
  def change
    create_table :pils do |t|
      t.string :lastname
      t.string :firstname
      t.string :middlename

      t.timestamps
    end
  end
end
