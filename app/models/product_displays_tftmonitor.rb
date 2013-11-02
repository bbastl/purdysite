class ProductDisplaysTftmonitor < ActiveRecord::Base
	#self.table_name = "product_displays_tftmonitors"

	def self.to_display
		self.all.order("sort")
	end
end