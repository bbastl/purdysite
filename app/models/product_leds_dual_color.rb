

class ProductLedsDualColor < ActiveRecord::Base
  include ProductHelpers
	self.inheritance_column = :_type_disabled
	self.table_name = "product_leds_dual_color"

end