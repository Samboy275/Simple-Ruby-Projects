# frozen_string_literal: true

def stock_picker(days)
  # 1- loop through the days in days
  # 2- intilizae a max value for difference
  # 3- loop through the remaining days to get the difference
  # 4- if difference is higher then replace the original indicies of sell day and buy day
  best_days = []
  best_price = 0
  days.each_with_index do |day, index|
    # puts "#{day} #{index}"

    (days[index + 1..]).each do |i|
      next unless i - day > best_price

      best_price = i - day
      best_days = [index, days.index(i)]
      # puts "#{best_price} at #{index} #{days.index(i)}"
    end
  end
  best_days
end

pp stock_picker([17, 3, 6, 9, 15, 8, 6, 20, 12, 14, 2, 9, 18, 5])
