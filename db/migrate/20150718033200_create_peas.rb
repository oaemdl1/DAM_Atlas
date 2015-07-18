class CreatePeas < ActiveRecord::Migration
  def change
    create_table :peas do |t|
      t.references :specialty, index: true, foreign_key: true
      t.string :ciclo
      t.text :detalle

      t.timestamps null: false
    end
  end
end
