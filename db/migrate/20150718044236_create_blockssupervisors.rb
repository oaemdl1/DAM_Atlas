class CreateBlockssupervisors < ActiveRecord::Migration
  def change
    create_table :blockssupervisors do |t|
      t.references :supervisor, index: true, foreign_key: true
      t.references :block, index: true, foreign_key: true
      t.string :idtecsem

      t.timestamps null: false
    end
  end
end
