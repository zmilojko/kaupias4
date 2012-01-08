class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_history, :foreign_key => :orders_id
  has_many :order_items, :foreign_key => :orders_id
  has_many :totals, :class_name => 'OrderTotal', :foreign_key =>  :orders_id

  def history
    order_history.order :date_added
  end
  
  def items
    order_items.order :orders_products_id
  end
end
