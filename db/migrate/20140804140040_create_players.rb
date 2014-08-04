class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :position
      t.integer :rating
      t.integer :confidence_interval
      t.string :email
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
