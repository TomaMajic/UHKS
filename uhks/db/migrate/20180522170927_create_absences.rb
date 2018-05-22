class CreateAbsences < ActiveRecord::Migration[5.1]
  def change
    create_table :absences do |t|
      t.references :user, foreign_key: true
      t.string :explanation
      t.datetime :date_from
      t.datetime :date_to

      t.timestamps
    end
  end
end
