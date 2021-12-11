def bubble_sort(arr)
  for i in 1..arr.length do
    for i in 0..(arr.length-2) do
        if arr[i+1] < arr[i]
            place = arr[i]
            arr[i] = arr[i+1]
            arr[i+1]= place
        end
    end
  end
  print arr
end


bubble_sort([4,3,78,2,0,2])
