class ProductSwitchesRotary < ActiveRecord::Base
  include ProductHelpers
	self.inheritance_column = :_type_disabled
	self.table_name = "product_switches_rotary"

end