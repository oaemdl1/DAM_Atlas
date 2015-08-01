class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :visit_date
      t.integer :estimated_time
      t.text :motive
      t.text :comments
      t.references :company, index: true, foreign_key: true
      t.references :supervisor, index: true, foreign_key: true
      t.references :visit_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
