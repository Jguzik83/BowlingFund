class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :bio, null: false
      t.integer :average, null: false
      t.integer :funds

      t.timestamps
    end
  end
end
