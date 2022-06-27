class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 20
      t.string :email, null: false, index: true
      t.string :password, null:false

      t.timestamps
    end
  end
end
