class ProductDisplaysTftmodule < ActiveRecord::Base
  include ProductHelpers
	self.inheritance_column = :_type_disabled
end