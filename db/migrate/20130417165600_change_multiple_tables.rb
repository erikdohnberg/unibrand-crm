class ChangeMultipleTables < ActiveRecord::Migration
	def change
		change_table :addresses do |t|
		t.string :street_address
		t.string :city
		t.string :postal_code
		end
	end
end
