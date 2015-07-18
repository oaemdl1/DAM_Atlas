class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :nombreP
      t.string :nombreS
      t.string :ApellidoPaterno
      t.string :ApellidoMaterno

      t.timestamps null: false
    end
  end
end
