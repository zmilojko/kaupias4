class Category < ActiveRecord::Base
  has_many :descriptions, :class_name => 'CategoryDescription', :foreign_key => :categories_id  
  def name
    descriptions.where(:language_id => 2)[0].categories_name 
  end

  has_many :subcategories, :class_name => "Category", :foreign_key => "parent_id"
  belongs_to :parent, :class_name => "Category", :foreign_key => "parent_id"
  
  def hierarchy(indentation)
    s =  indentation + name + "\n"
    subcategories.each {|c| s += c.hierarchy indentation + "  " }
    s
  end
  
  def self.FullHierarchy
    s=""
    self.all.each {|x| s += x.hierarchy "" if x.parent == nil }
    s
  end
end
