class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.date :DateRented
      t.date :DateDue

      t.timestamps
    end
  end
end
