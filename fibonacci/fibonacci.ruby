

# Assignemnt: Write a function that takes a number and returns an array of fibonacci sequence with the given number
# as length using iteration

def fib_iteration(number)
  arr = [0,1]
  for i in 1..number - 2
    arr << arr[i-1] + arr[i]
  end
  return arr
end



def fib_rec(number, i=0, j=1, acc=[0])
  acc << i + j unless number == 1
  return (number == 1) ? acc : fib_rec(number-1, i + j, i, acc)
end


puts fib_rec(8)
