class AddsTotalWinsToPlayer < ActiveRecord::Migration
  def change
  	add_column :players, :total_win_count, :integer
  end
end
