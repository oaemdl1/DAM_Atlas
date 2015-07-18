class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.references :district, index: true, foreign_key: true
      t.text :razonsocial
      t.string :ruc
      t.string :telefonofijo
      t.string :telefonomovil
      t.string :partidaregistral
      t.string :representantelegal
      t.string :correo
      t.string :direccion
      t.string :linkgooglemaps
      t.integer :eliminado

      t.timestamps null: false
    end
  end
end
