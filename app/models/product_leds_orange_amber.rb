class ProductLedsOrangeAmber < ActiveRecord::Base
  include ProductHelpers
	self.inheritance_column = :_type_disabled
	self.table_name = "product_leds_orange_amber"

end