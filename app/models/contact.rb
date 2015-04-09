
class Contact 
	# include ActiveAttr::Validation
	# include ActiveAttr::Conversion
	# include ActiveModel::Naming
	include ::ActiveAttr::Model

	attribute :name
	attribute :email
	attribute :message
	attribute :contact_no

	attr_accessor :name, :email, :message, :contact_no

	validates_presence_of :name
	validates_presence_of :contact_no
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates_presence_of :message, :maximum => 500

	def initialize(attributes ={})
		attributes.each do |name, value|

			send("#{name}=", value)
		end
	end

def persisted?
	false
end

end

