class User < ActiveRecord::Base
	authenticates_with_sorcery!
	rolify :before_add => :before_add_method
	has_many Customers
  
	attr_accessible :first_name, :last_name, :email, :password, :password_confirmation

	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :email, :presence => true, :uniqueness => true
	# validates_confirmation_of :password
	validates :password, :presence => true, :on => :create, :confirmation => true

	def before_add_method(role)
		# do something before it gets added
	end

end
