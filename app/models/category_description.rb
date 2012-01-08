class CategoryDescription < ActiveRecord::Base
  set_table_name :categories_description
  belongs_to :category
end
