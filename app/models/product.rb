class Product < ActiveRecord::Base
  has_many :descriptions, :class_name => 'ProductDescription', :foreign_key => :products_id  

  def name
    descriptions.where(:language_id => 2)[0].products_name 
  end
end
