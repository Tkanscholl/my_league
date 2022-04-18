class AddUsernamepassword < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :user_name, :string 
    add_column :players, :password_digest, :string
  end
end
