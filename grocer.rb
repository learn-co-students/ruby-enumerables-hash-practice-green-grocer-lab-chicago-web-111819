def consolidate_cart(cart)
  big_ol_hash = {}
  cart.each_with_index do |name, index| 
    name = cart[index].keys[0]
    if big_ol_hash[name]
      big_ol_hash[name][:count] += 1
    else 
      big_ol_hash[name] = cart[index][name]
      big_ol_hash[name][:count] = 1
   #  binding.pry
    end
  end
  p big_ol_hash
end

require "pry"

def apply_coupons(cart, coupon)
  hash_after_coupons = {}
  cart.each do |item_name|
    name = item_name[0]
    #binding.pry
    if (coupon[0][:item] == name) && (cart[name][:count] >= coupon[0][:num])
      
      unit_price = coupon[0][:cost] / coupon[0][:num]
      quant_discounted = cart[name][:count] / coupon[0][:num]
      new_price = unit_price * quant_discounted
      hash_after_coupons["#{name.upcase} W/ COUPON"] = {:price => new_price, :clearance => "true", :count => quant_discounted}}
      name[:count] = name[:count] - quant_discounted
    else
      hash_after_coupons[] cart[0][{}]
    end
  end
  hash_after_coupons
end
  
  
  #
  #1. if coupon itemA exists && count of itemA in big_ol_hash is >= 
  #num of itemA on a.coupon <i.e., if I have enough of an itemA for the
  #a.coupon to apply>,
  #
  #2. discounted.item= take cp.UNIT.price on a.coupon and apply it to appropriate no. of itemA in big_ol_hash 
      #cp.UNIT.price = cost / num
      #cp.UNIT.price * (big_ol_hash count of itemA / a.coupon num of itemA <without remainder>)
  #
  #3. big_ol_hash.w/coupons.applied == add itemA.w/coupon.pair <key/value pair in form of 'itemA w/ coupon'> to big_ol_hash
  #
  #4. subtract count of itemA.w/coupon.pair from original itemA count
  #
  #5. return big_ol_hash.w/coupons.applied




def apply_clearance(cart)
  # code here
end



def checkout(cart, coupons)
  # will rely on the three methods above
end
