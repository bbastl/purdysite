class ProductDisplaysPrototyping < ActiveRecord::Base
	self.inheritance_column = :_type_disabled
	self.table_name = "product_displays_prototyping"

	def self.to_display
		self.where(is_active: true).order("sort")
	end
	
	def self.display_all_sorted
    self.order("is_active desc").order("sort")
  end
end