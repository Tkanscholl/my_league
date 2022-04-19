class UpdatedLeagueTable < ActiveRecord::Migration[7.0]
  def change
    add_column :leagues, :league_name, :string
    add_column :leagues, :game_type, :string
  end
end
