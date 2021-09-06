class AddCurrentSymbolToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :current_symbol, :string
  end
end
