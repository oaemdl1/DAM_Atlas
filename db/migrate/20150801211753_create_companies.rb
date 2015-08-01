class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :ruc
      t.string :address
      t.string :phones
      t.string :latitude
      t.string :longitude
      t.references :district, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
