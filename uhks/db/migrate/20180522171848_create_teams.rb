class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.references :city, foreign_key: true
      t.string :name
      t.integer :ranking

      t.timestamps
    end
  end
end
