class AddForeignKeysToRentals < ActiveRecord::Migration[5.2]
  def change
    add_reference :rentals, :member, foreign_key: true
    add_reference :rentals, :book, foreign_key: true
  end
end
