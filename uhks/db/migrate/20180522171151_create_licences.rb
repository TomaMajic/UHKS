class CreateLicences < ActiveRecord::Migration[5.1]
  def change
    create_table :licences do |t|
      t.string :type
      t.integer :priority

      t.timestamps
    end
  end
end
