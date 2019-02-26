class AddPassportToPils < ActiveRecord::Migration[5.2]
  def change
    add_column :pils, :passportSeries, :string
    add_column :pils, :passportNumber, :string
    add_column :pils, :passportIssuedDate, :date
    add_column :pils, :passportIssuedCode, :string
    add_column :pils, :passportIssuedBy, :string
    add_column :pils, :birthDate, :date
    add_column :pils, :passportBirthPlace, :string
    add_column :pils, :passportRegion, :string
  end
end
