def stock_picker(arr)
    great = 0
    result = []
    for i in 0..(arr.length-1) do
        for z in (i+1)..(arr.length-1) do
          t = arr[z] - arr[i]
          if t > great
            great = t
            result = [i, z]
          end
        end
    end
    print result;
end

stock_picker([17,3,6,9,15,8,6,1,10])