# Write a method which takes a number and returns an array containing that many numbers from the fibonacci sequence.

# a) iteration
def fib(n)
  arr = [0,1]
  if n<=0
    return
  elsif n == 1
    [0]
  elsif n == 2
    arr
  else
    2.upto(n-1) do |num|
      arr[num] = arr[num -1] + arr[num -2]
    end
  end
  arr
end
p fib(4)

# b) recursion
def fib_rec(n)
  if n<=0
    return
  elsif n==1
    [0]
  elsif n==2
    [0,1]
  else 
    arr = fib_rec(n-1)
    arr.push(arr[-2]+arr[-1])
  end
end
p fib_rec(4)
