class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.references :specialty, index: true, foreign_key: true
      t.string :semestre
      t.string :ciclo_academico
      t.string :bloque
      t.string :dia_semana

      t.timestamps null: false
    end
  end
end
