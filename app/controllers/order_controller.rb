class OrderController < ApplicationController

	def index
		prod_sel = params[:prod_sel]
		prod_type = params[:prod_type]

		class_to_load = "#{prod_type}".camelize.constantize
		@product_data = class_to_load.where(:product_id => prod_sel).first
	end
end