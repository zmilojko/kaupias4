class ProductDescription < ActiveRecord::Base
  set_table_name :products_description
  belongs_to :product, :foreign_key =>  :products_id
end
