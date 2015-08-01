class CreateAppUsers < ActiveRecord::Migration
  def change
    create_table :app_users do |t|
      t.string :login
      t.string :password
      t.string :name
      t.string :last_name
      t.references :app_user_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
