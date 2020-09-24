# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    if x<0
        return false
    end
    x = x.digits
    if x == x.reverse
        true
    else
        false
    end
end