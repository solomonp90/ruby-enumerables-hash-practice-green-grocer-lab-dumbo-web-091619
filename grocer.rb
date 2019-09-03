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
applied_cart = cart
coupons.each do |coupon|
    itemwc = coupon[:item]
   coupnum = coupon[:num]
   if cart.include?(itemwc) && cart[itemwc][:count] >= coupnum
applied_cart[c_name][:count] -= c_num
if applied_cart.has_key?("#{c_name} W/COUPON")
       applied_cart["#{c_name} W/COUPON"][:count] += coupon[:num]

     else
       applied_cart["#{c_name} W/COUPON"] = {
         :price => (coupon[:cost] / coupon[:num]),
         :clearance => applied_cart[c_name][:clearance],
         :count => coupon[:num]
       }
      end
    end
 end
   applied_cart
end
# applied_coupons={}
#    cart.each do |items|

 def apply_clearance(cart)
   # code here
 end

 def checkout(cart, coupons)
   # code here
 end
