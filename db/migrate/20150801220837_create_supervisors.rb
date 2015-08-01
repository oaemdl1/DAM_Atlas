class CreateSupervisors < ActiveRecord::Migration
  def change
    create_table :supervisors do |t|
      t.string :name
      t.string :last_name
      t.references :app_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
