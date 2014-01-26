class OrderNote < ActiveRecord::Base
	self.table_name = "notes"
	self.inheritance_column = :_type_disabled
end