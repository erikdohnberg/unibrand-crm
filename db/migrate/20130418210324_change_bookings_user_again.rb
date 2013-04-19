class ChangeBookingsUserAgain < ActiveRecord::Migration
  def change
    remove_column :bookings, :users_id
    change_table :bookings do |t|
      t.references :user
    end
  end
end
