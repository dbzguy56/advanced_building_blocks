def bubble_sort(arr)
  arr.length.times do |x|
    num_of_comparisons = arr.length - x - 1
    num_of_comparisons.times do |y|
      if arr[y] > arr[y+1]
        temp = arr[y]
        arr[y] = arr[y+1]
        arr[y+1] = temp
      end
    end
  end
  arr
end

def bubble_sort_by(arr)
  arr.length.times do |x|
    num_of_comparisons = arr.length - x - 1
    num_of_comparisons.times do |y|
      calc = yield(arr[y], arr[y+1])
      if calc > 0
        temp = arr[y]
        arr[y] = arr[y+1]
        arr[y+1] = temp
      end
    end
  end
  puts arr
end

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
  left.length - right.length
end
#puts bubble_sort([4,3,78,2,0,2])
