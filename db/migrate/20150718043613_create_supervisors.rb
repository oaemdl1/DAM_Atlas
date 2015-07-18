class CreateSupervisors < ActiveRecord::Migration
  def change
    create_table :supervisors do |t|
      t.references :company, index: true, foreign_key: true
      t.string :nombrep
      t.string :nombres
      t.string :apellidopaterno
      t.string :apellidomaterno
      t.string :dni
      t.string :telefonos
      t.string :correopersonal
      t.boolean :eliminado

      t.timestamps null: false
    end
  end
end
