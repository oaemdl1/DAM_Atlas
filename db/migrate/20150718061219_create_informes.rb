class CreateInformes < ActiveRecord::Migration
  def change
    create_table :informes do |t|
      t.string :jefe
      t.date :fecha_visita
      t.references :supervisor, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.string :aspectos_monitor
      t.string :aspectos_estudiante
      t.text :problemas_seguridad
      t.text :soluciones_seguridad
      t.text :problemas_estudiante
      t.text :soluciones_estudiante
      t.text :problemas_monitor
      t.text :soluciones_monitor
      t.text :problemas_puesto
      t.text :soluciones_puesto

      t.timestamps null: false
    end
  end
end
