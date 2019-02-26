class AddDrafttokenToPils < ActiveRecord::Migration[5.2]
  def change
    add_column :pils, :drafttoken, :string
  end
end
