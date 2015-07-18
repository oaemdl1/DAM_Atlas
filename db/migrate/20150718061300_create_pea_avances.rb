class CreatePeaAvances < ActiveRecord::Migration
  def change
    create_table :pea_avances do |t|
      t.references :pea, index: true, foreign_key: true
      t.string :dominio
      t.boolean :oper_ejecutar
      t.boolean :oper_seminario
      t.references :informe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
