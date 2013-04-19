class Address < ActiveRecord::Base
	belongs_to :booking
	attr_accessible :street_address, :city, :postal_code 

	validates :street_address, :presence => true
	validates :city, :presence => true
	validates :postal_code, :presence => true

end
