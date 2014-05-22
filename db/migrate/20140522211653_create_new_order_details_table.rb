class CreateNewOrderDetailsTable < ActiveRecord::Migration
  def change
    create_table :new_order_details do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :company
    	t.string :address1
    	t.string :address2
    	t.string :city
    	t.string :state
    	t.string :country
    	t.string :zip
    	t.string :phone
    	t.string :fax
    	t.string :email
    	t.string :product_id
    	t.string :product_name

    	t.timestamps
    end
  end
end
