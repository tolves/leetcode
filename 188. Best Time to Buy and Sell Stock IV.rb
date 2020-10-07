# @param {Integer} k
# @param {Integer[]} prices
# @return {Integer}
def max_profit(k, prices)
    pl = prices.length - 1

    pnl = [0] * prices.length

    if 2*k >= pl
        sum = 0
        (1..pl).each do |i|
            sum += [0, prices[i]-prices[i-1]].max
        end
        return sum
    end

    (0..k-1).each do 
        val = 0
        (1..pl).each do |i|
            val = [pnl[i], val + prices[i] - prices[i-1]].max
            pnl[i] = [pnl[i-1], val].max
        end
    end
    pnl[-1]
end


puts max_profit(2, [2,4,1])