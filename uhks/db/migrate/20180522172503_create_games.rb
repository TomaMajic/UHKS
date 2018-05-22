class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.references :city, foreign_key: true
      t.references :minimal_licence, foreign_key: {to_table: :licences}
      t.references :home_team, foreign_key: {to_table: :teams}
      t.references :away_team, foreign_key: {to_table: :teams}
      t.datetime :event_time
      t.integer :num_of_refs

      t.timestamps
    end
  end
end
