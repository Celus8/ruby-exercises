def bubble_sort(array)
  array.length.times do
    for i in 0..(array.length - 2)
      if array[i] > array[i+1]
        temp = array[i]
        array[i] = array[i+1]
        array[i+1] = temp
      end
    end
  end
  array
end


p bubble_sort([4,3,78,2,0,2,54,453,86,2,7,9,45,98,102,45,9,456,8,435,2345,457,657])