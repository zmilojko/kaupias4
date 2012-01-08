class ProductsController < ApplicationController

  http_basic_authenticate_with :name => "dhh", :password => "secret", :except => :index

  respond_to :html, :json

  # GET /products
  # GET /products.json
  def index
    @products = Product.all :order => "products_id"

	respond_with (@products)
=begin
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
=end
  end  
  
end
