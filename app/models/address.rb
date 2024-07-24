class Address < ApplicationRecord

	default_scope { order(order_no: :asc) }

	validates_presence_of :name, :complete_address
	validates_uniqueness_of :name

end
