class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
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
      t.references :districts, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
