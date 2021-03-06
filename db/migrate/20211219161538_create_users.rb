class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username, unique: true
      t.string :email, unique: true
      t.string :password_hash
      t.string :password_salt
      t.string :avatar_url
      t.string :user_bg_color, default: "#005a55"
      t.timestamps
    end
  end
end
