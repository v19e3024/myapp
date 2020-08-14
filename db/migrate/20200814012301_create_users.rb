class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :signin_name
      t.string :display_name
      t.string :password_digest
      t.string :status, default: 'available'

      t.timestamps
    end
    add_index :users, :signin_name, unique: true
  end
end
