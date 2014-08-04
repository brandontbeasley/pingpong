class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :player1
      t.string :player2
      t.integer :p1score
      t.integer :p2score
      t.string :winner

      t.timestamps
    end
  end
end
