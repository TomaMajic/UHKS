class AddLicenceToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :licence, foreign_key: true
  end
end
