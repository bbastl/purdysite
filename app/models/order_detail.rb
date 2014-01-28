class OrderDetail < ActiveRecord::Base
	self.primary_key = 'orderid'
	self.inheritance_column = :_type_disabled
end