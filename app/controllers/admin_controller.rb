class AdminController < ApplicationController

	http_basic_authenticate_with name: "admin", password: "display7"

	def index

	end

	def product_index

	end

	def product_edit
		@product = params[:product]
		class_to_load = "#{@product}".camelize.constantize
		@products = class_to_load.display_all_sorted
 	end

 	def product_edit_item
 		@product = params[:product_type]
 		item = params[:product_id]
		class_to_load = "#{@product}".camelize.constantize
		@product_data = class_to_load.where(:product_id => item).first
 	end

 	def product_new
 		@product = params[:product_type]
 		class_to_load = "#{@product}".camelize.constantize
		@product_data = class_to_load.new
 	end

 	def product_create
 		product_type = params[:product_type]
 		class_to_load = product_type.camelize.constantize
 		product = class_to_load.new
 		filtered_params = params.require(product_type.to_sym).permit(product.attribute_names)
 		product = class_to_load.create(filtered_params)
 		redirect_to "/admin/product_edit_item?product_type=#{params[:product_type]}&product_id=#{product.product_id}"
 	end

 	def product_delete_item
 		# https://www.purdyelectronics.com/admin/product_delete_item?product_type=product_displays_segment&product_id=11
 		@product = params[:product_type]
 		item = params[:product_id]

 		class_to_load = "#{@product}".camelize.constantize
		@product_data = class_to_load.where(:product_id => item).first

		@product_data.is_active = false

		@product_data.save

		redirect_to "/admin/product_edit?product=#{@product}"
 	end

 	def create_pdf
 		product_type = params[:product_type]
 		product_id = params[:product_id]
 		@product = params[:product_type]

		class_to_load = "#{product_type}".camelize.constantize
		@product_data = class_to_load.where(:product_id => product_id).first
 	end
 	
 	def create_html_file
    product_type = params[:product_type]
    product_id = params[:product_id]
    @product = params[:product_type]

    class_to_load = "#{product_type}".camelize.constantize
    @product_data = class_to_load.where(:product_id => product_id).first
  end

 	def pdf_upload
 		pdf = params[:pdf]
 		product_type = params[:product_type]
 		product_id = params[:product_id]

 		if pdf

	 		File.open(Rails.root.join('public', 'pdf', pdf.original_filename), 'wb') do |file|
	    		file.write(pdf.read)
	  	end

	  	class_to_load = "#{product_type}".camelize.constantize
			product_data = class_to_load.where(:product_id => product_id).first

			product_data.pdf = pdf.original_filename
			product_data.save

		end
		
 		redirect_to "/admin/product_edit?product=#{ product_type}"
 	end
 	
 	def html_upload
    pdf = params[:pdf]
    product_type = params[:product_type]
    product_id = params[:product_id]

    if pdf

      File.open(Rails.root.join('public', 'html_files', pdf.original_filename), 'wb') do |file|
          file.write(pdf.read)
      end

      class_to_load = "#{product_type}".camelize.constantize
      product_data = class_to_load.where(:product_id => product_id).first

      product_data.html_file = pdf.original_filename
      product_data.save

    end
    
    redirect_to "/admin/product_edit?product=#{ product_type}"
  end

 	def product_update
 		Rails.logger.debug params

 		product_type = params[:product_type]
 		class_to_load = product_type.camelize.constantize
 		product = class_to_load.where(product_id: params[:product_id]).first


 		filtered_params = params.require(product_type.to_sym).permit(product.attribute_names)

 		begin
 			product.update(filtered_params)
 		rescue StandardError => error
 			Rails.logger.error error.backtrace
 		end

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
 			order.decision_maker = params[:mmaker] unless params[:mmaker].empty?
 			order.decision_title = params[:ttitle] unless params[:ttitle].empty?
 			order.target_price = params[:Target_Price] unless params[:Target_Price].empty?
 			order.buying_criteria = params[:Buying_Criteria] unless params[:Buying_Criteria].empty?
 			order.how_did = params[:How_Did] unless params[:How_Did].empty?
 			order.competition1 = params[:Competition1] unless params[:Competition1].empty?
 			order.competition2 = params[:Competition2] unless params[:Competition2].empty?
 			order.competition3 = params[:Competition3] unless params[:Competition3].empty?
 			order.competition4 = params[:Competition4] unless params[:Competition4].empty?
 			#order.prototype_date = params[:Pr_Date] unless params[:Pr_Date].empty?
 			#order.production_start = params[:P_Date] unless params[:P_Date].empty?
 			order.eau = params[:tEau] unless params["tEau"].empty?

 			# SHIPING INFO
 			order.auth_status = params[:hAuthStatus] unless params[:hAuthStatus].empty?
 			order.auth_by = params[:fauthby] unless params[:fauthby].empty?
 			order.shippingpriority = params[:sPriority] unless params[:sPriority].empty?
 			order.shippingnumber = params[:hShipping] unless params[:hShipping].empty?
 			order.shippingmethod = params[:sMethod] unless params[:sMethod].empty?
 			order.shippingcarrier = params[:sCarrier] unless params[:sCarrier].empty?
 			order.save

 			#Handle create new note
 			note = params[:hNote] unless params[:hNote].empty?
 			note = params[:hNote2] unless params[:hNote2].empty?

 			if note
 				OrderNote.create(order_id: order.id, note_date: Time.now, details: note, role: "admin")
 			end
 		end

 		redirect_to "/admin/order_edit?orderid=#{params[:orderid]}" 
 	end
end