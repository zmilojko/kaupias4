class Customer < ActiveRecord::Base
  has_many :orders, :foreign_key => :customers_id

  def name
	"#{customers_firstname} #{customers_lastname}"
  end
end