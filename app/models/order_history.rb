class OrderHistory < ActiveRecord::Base
  set_table_name :orders_status_history
  belongs_to :order, :foreign_key =>  :orders_id
  #belongs_to :order_status, :foreign_key =>  :orders_status_id
  
  def status_text
    OrderStatus.where(:language_id => 2, :orders_status_id => orders_status_id)[0].orders_status_name
  end
end
