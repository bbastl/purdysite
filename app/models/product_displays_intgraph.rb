class ProductDisplaysIntgraph < ActiveRecord::Base
  include ProductHelpers
  
	self.inheritance_column = :_type_disabled
	self.table_name = "product_displays_intgraph"

end