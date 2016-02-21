class Product
attr_accessor :pid,:item,:description,:price,:condition,:dimension_w,:dimension_l,
:dimension_h,:img_file,:quantity,:category

def discount
  if condition = "good"
    price = 0.9 * price
  elsif condition = "average"
    price = 0.8 * price
  end
end


end
