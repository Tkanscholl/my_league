class Playersetup < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |p|
      p.string :Player 
      p.string :Army 
      p.integer :Wins
      p.integer :Loses
    end 
  end
end
