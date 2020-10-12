# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}
def find_restaurant(list1, list2)
    hash = Hash.new
    
    list2.each_with_index do |l,index2|
        if list1.include? l
            index1 = list1.index l
            hash[l] = index1 + index2
        end
    end
    res = []
    anchor = hash.first[1]
    
    hash.each do |restaurant, val|
        if val < anchor
            anchor = val
            res = [restaurant]
        elsif val == anchor
            res.push restaurant
        end
    end
    res
end

# puts find_restaurant(["Shogun","Tapioca Express","Burger King","KFC"],["KFC","Shogun","Burger King"])
puts find_restaurant(["Shogun","Tapioca Express","Burger King","KFC"], ["KFC","Shogun","Burger King"])
# puts find_restaurant(["Shogun","Tapioca Express","Burger King","KFC"], ["KFC","Burger King","Tapioca Express","Shogun"])