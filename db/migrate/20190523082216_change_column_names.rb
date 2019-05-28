class ChangeColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :rentals, :DateRented, :date_rented
    rename_column :rentals, :DateDue, :date_due
  end
end
