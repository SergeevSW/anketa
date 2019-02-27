class AddUtmsToPils < ActiveRecord::Migration[5.2]
  def change
    add_column :pils, :utm_source, :string
    add_column :pils, :utm_medium, :string
    add_column :pils, :utm_campaign, :string
  end
end
