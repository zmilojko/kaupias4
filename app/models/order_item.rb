class OrderItem < ActiveRecord::Base
  set_table_name :orders_products
  belongs_to :order, :foreign_key =>  :orders_id
  belongs_to :product, :foreign_key =>  :products_id
end
