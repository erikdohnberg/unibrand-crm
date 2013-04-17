class AddUsersToBookings < ActiveRecord::Migration
  def change
    change_table :bookings do |t|
      t.string :users
      t.references :origin
      t.references :destination
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :confirmed
    end
  end
end
