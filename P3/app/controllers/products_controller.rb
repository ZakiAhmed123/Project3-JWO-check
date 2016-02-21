require 'csv'

class ProductsController < ApplicationController
  def list
    @products =[]


    CSV.foreach("mf_inventory.csv", headers:true) do |row|

    product=Product.new
    product.img_file = row.to_h["img_file"]
    product.item = row.to_h["item"]
    product.price = row.to_h["price"]
    product.pid = row.to_h["pid"]
    product.description = row.to_h["description"]
    product.condition = row.to_h["condition"]
    product.dimension_w = row.to_h["dimension_w"]
    product.dimension_l = row.to_h["dimension_l"]
    product.dimension_h = row.to_h["dimension_h"]
    product.quantity = row.to_h["quantity"]
    product.category = row.to_h["category"]

      @products << product
    end

  end

  def view

    @products =[]


    CSV.foreach("mf_inventory.csv", headers:true) do |row|

    product=Product.new
    product.img_file = row.to_h["img_file"]
    product.item = row.to_h["item"]
    product.price = row.to_h["price"]
    product.pid = row.to_h["pid"]
    product.description = row.to_h["description"]
    product.condition = row.to_h["condition"]
    product.dimension_w = row.to_h["dimension_w"]
    product.dimension_l = row.to_h["dimension_l"]
    product.dimension_h = row.to_h["dimension_h"]
    product.quantity = row.to_h["quantity"]
    product.category = row.to_h["category"]

      @products << product
    end

    @product = @products.find {|a| a.pid == params[:pid]}
  end
end
