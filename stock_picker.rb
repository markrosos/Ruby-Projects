# Assignment

# Implement a method #stock_picker that takes in an array of stock prices, one
# for each hypothetical day. It should return a pair of days representing the
# best day to buy and the best day to sell. Days start at 0.

# > stock_picker([17,3,6,9,15,8,6,1,10])
#  => [1,4]  # for a profit of $15 - $3 == $12

# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]
week_2 = [15, 2, 27, 8, 9]
week_3 = [1, 2, 3, 4, 5, 8]
week_4 = [19, 15, 12, 9, 2, 20]

def stock_picker(prices)
  # reverses prices array, combines all in pairs of two, then iterates and finds the max value from subtraction (optimal days)
  arr = prices.reverse.combination(2).max_by { |x, y| x - y } # returns [15, 3]
  # maps arr with prices, finding index value of days in arr, and reverses them back ([15, 3] => [1, 4])
  arr.map { |e| prices.index(e) }.reverse # returns [1, 4]
end

p stock_picker(stocks) # returns [1, 4]
p stock_picker(week_2) # returns [1, 2]
p stock_picker(week_3) # returns [0, 5]
p stock_picker(week_4) # returns [4, 5]
