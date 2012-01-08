class OrderTotal < ActiveRecord::Base
  set_table_name :orders_total
  belongs_to :order, :foreign_key =>  :orders_id

  #following code handles the situation that one field
  #in this table is called 'class', which happens to be 
  #an existing method. So we do not create a method to access
  #that field, but bellow is a manual accessor (readonly)
  class << self
    def instance_method_already_implemented?(method_name)
      return true if method_name == 'class'
      super
    end
  end
  
  def ot_class
    @model.attributes["class"]
  end
  
end
