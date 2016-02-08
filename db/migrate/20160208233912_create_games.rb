class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.hash :grid
      t.integer :score
      t.boolean :over
      t.boolean :won
      t.boolean :keepPlaying

      t.timestamps null: false
    end
  end
end
