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
 		# where product_name ilike '% search_str %' or company ilike '% search_str %' and status = status and fld_date > <
 		if params[:chkval]
 			query = ""
 			if srch = params[:search]
 				query += "(product_name ilike '%#{srch}%' or company ilike '%#{srch}%' or lastname ilike '%#{srch}%')"
 			end

 			unless params[:status].empty?
 				query += " and status = '#{params[:status]}'"
 			end

 			unless params[:sDate].empty?
 				query += " and fld_date >= '#{params[:sDate]}' and fld_date < '#{params[:eDate]}' "
 			end

 			@od = OrderDetail.where(query).order('fld_date desc').limit(500)
 		else
 			@od = OrderDetail.order('fld_date desc').limit(50)
 		end
 	end

 	def order_edit
 		current_order_id = params[:orderid]

 		@order_item = OrderDetail.where(:orderid => current_order_id).first
 		@order_notes = OrderNote.where(:order_id => current_order_id).all
 	end

 	def order_update
 		
 		order = OrderDetail.where(:orderid => params[:orderid]).first

 		if order
 			Rails.logger.debug order.inspect
 			order.status = params[:hStatus] unless params[:hStatus].empty?
 			order.project = params[:hProject] unless params["hProject"].empty?
 			order.eau = params[:tEau] unless params["tEau"].empty?
 			order.save
 		end

 		redirect_to "/admin/order_edit?orderid=#{params[:orderid]}" 
 	end
end