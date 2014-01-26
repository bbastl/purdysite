class AdminController < ApplicationController

	def index

	end

	def product_index

	end

	def product_edit
		@product = params[:product]
		class_to_load = "#{@product}".camelize.constantize
		@products = class_to_load.all
 	end

 	def product_edit_item
 		@product = params[:product_type]
 		item = params[:product_id]
		class_to_load = "#{@product}".camelize.constantize
		@product_data = class_to_load.where(:product_id => item).first
 	end

 	def product_update
 		Rails.logger.debug params
 		flash[:alert] = "UPDATED"
 		redirect_to "/admin/product_edit_item?product_type=#{params[:product_type]}&product_id=#{params[:product_id]}"
 	end

 	def order_index

 	end

 	def order_edit
 		current_order_id = params[:orderid]

 		@order_item = OrderDetail.find(current_order_id)
 		@order_notes = OrderNote.where(:order_id => current_order_id).all
 	end

 	def order_update

 	end
end