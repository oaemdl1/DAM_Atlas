class CreateAppUserTypes < ActiveRecord::Migration
  def change
    create_table :app_user_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
