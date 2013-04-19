class Booking < ActiveRecord::Base
	attr_accessible :origin, :destination, :starts_at, :ends_at
  belongs_to :user
  belongs_to :origin, :class_name => "Address"
  belongs_to :destination, :class_name => "Address"
end