class CustomersController < ApplicationController
  http_basic_authenticate_with :name => "dhh", :password => "secret"

  respond_to :html, :json

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all :order => "customers_id"
	respond_with (@customers)
  end  

end
