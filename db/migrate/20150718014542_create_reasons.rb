class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.string :detalle

      t.timestamps null: false
    end
  end
end
