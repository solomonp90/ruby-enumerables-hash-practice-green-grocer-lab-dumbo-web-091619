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
coupons.each do |coupon|
item = coupon[:item]
if cart[item] && coupon[:item][:count] >= coupon[:num] && !cart["#{item}W/COUPON"]
cart["#{item}W/COUPON"] =  {price: coupon[:cost], clearance:cart[item][:clearance] , count: coupon[:num]}
cart[item][:count] -= coupone[:num]
elsif coupon[:item][:count] >= coupon[:num] && cart["#{item}W/COUPON"]
cart["#{item} W/COUPON"][:count] += coupon[:num]
cart[item][:count] -= coupon[:num]
    end
  end
end
# applied_coupons={}
#    cart.each do |items|

 def apply_clearance(cart)
   # code here
 end

 def checkout(cart, coupons)
   # code here
 end
