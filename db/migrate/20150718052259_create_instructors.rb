class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.date :fecha_visita
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
