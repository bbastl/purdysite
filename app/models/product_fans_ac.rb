

class ProductFansAc < ActiveRecord::Base
  include ProductHelpers
	self.inheritance_column = :_type_disabled
	self.table_name = "product_fans_axial_ac"

end