class CreateTableNewNotes < ActiveRecord::Migration
  def change
    create_table :new_notes do |t|
    	t.integer :new_order_detail_id
    	t.text :detail
    	t.string :role
    	t.timestamps
    end
  end
end
