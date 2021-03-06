=begin
>>> DESCRIPTION

  Enough is enough!
  Alice and Bob were on a holiday. Both of them took many pictures of the places they've been, 
  and now they want to show Charlie their entire collection. However, Charlie doesn't like these sessions, 
  since the motive usually repeats. He isn't fond of seeing the Eiffel tower 40 times. He tells them that 
  he will only sit during the session if they show the same motive at most N times. Luckily, Alice and Bob
  are able to encode the motive as a number. Can you help them to remove numbers such that their list contains
  each number only up to N times, without changing the order?

  Task
  Given a list lst and a number N, create a new list that contains each number of lst at most N times without 
  reordering. For example if N = 2, and the input is [1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2]
  since this would lead to 1 and 2 being in the result 3 times, and then take 3, which leads to [1,2,3,1,2,3].

>>> LOGIC
  Creates a hash table serving as an index to know how many times we have encoutered this value.
  For each element in the list, we increment the value in the hash table by 1.
  If the number of times we haves encountered the value is less than or equal to the maximum number of times
  we can fin an element, this value is added to the final array.

Date: 2021-01-09 by Benjamin Courchesne
link: https://www.codewars.com/kata/554ca54ffa7d91b236000023/train/ruby
=end

def delete_nth(order,max_e)
  ar = []
  hsh = Hash.new(0)
  order.map{ |x| hsh[x] += 1; ar << x if hsh[x] <= max_e }
  ar
end

delete_nth([20,37,20,21], 1)       # [20,37,21]
delete_nth([1,1,3,3,7,2,2,2,2], 3) # [1,1,3,3,7,2,2,2]
