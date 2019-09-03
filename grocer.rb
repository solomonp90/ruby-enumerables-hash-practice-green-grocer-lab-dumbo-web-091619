require 'pry'

def consolidate_cart(cart)
my_hash = {}
cart.each do|element_hash|
element_name = element_hash.keys[0]

if  my_hash.has_key?(element_name)
  my_hash[element_name][:count]+=1
else
    my_hash[element_name] = {
         count: 1,
         price: element_hash[element_name][:price],
         clearance: element_hash[element_name][:clearance]
    }
    end
  end
  my_hash
end


 def apply_coupons(cart, coupons)
return cart if coupons == []
new_cart = cart
coupons.each do |coupon|
  c_item = coupon[:item]
  c_val = coupon[:value]
end
# applied_coupons={}
#    cart.each do |items|

 def apply_clearance(cart)
   # code here
 end

 def checkout(cart, coupons)
   # code here
 end
