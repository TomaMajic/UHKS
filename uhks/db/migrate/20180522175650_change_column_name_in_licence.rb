class ChangeColumnNameInLicence < ActiveRecord::Migration[5.1]
  def change
  	rename_column :licences, :type, :name
  end
end
