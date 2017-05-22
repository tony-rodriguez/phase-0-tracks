# RELEASE 0
def search_array(arr=[], num)
  index = 0
  arr.length.times do
    if arr[index]==num
      return index
    else index += 1
    end
  end
  return nil
end
arr= [3, 55, 36, 7, 14]
p search_array(arr, 14)

# RELEASE 1
def fib(number)
  fib_array =[0,1]
  index_num = 2
  (number-2).times do
    fib_array << (fib_array[index_num-1] + fib_array[index_num-2])
    index_num += 1
  end
  return fib_array
end
p fib(100)[99] == 218922995834555169026

# RELEASE 2
#Lock first number at index [0]
#move to (next number)
#compare all previous numbers left to right until (compared number) > (next number)
#shift (compared number) one index right
#insert (next number)

def insertion_sort(arr)
  for x in 1..(arr.length-1)
    key = arr[x]
    y = x-1
    while y >= 0 && arr[y] > key
      arr[y+1] = arr[y]
      y -= 1
    end
    arr[y+1] = key
  end
end

test_list=[6, 2, 212, 44, 36, 1057, 64]
insertion_sort(test_list)
p test_list