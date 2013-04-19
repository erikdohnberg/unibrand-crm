class ChangeBookingsUser < ActiveRecord::Migration
  def change
    remove_column :bookings, :users
    change_table :bookings do |t|
      t.references :users
    end
  end
end
