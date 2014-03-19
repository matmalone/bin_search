def bin_search(arr, value, first, last)
  mid = ((last-first)/2+first).floor

  if last-first < 0
    return nil 
  end

  if arr[mid] == value
    return mid
  end

  if arr[mid] < value
    return bin_search(arr, value, mid+1, last)
  elsif arr[mid] > value
    return bin_search(arr, value, first, last-1)
  end
end

def bin_search_r(arr, value, first, last)
  while first <= last
    mid = ((last-first)/2+first).floor

    if arr[mid] == value
      return mid
    end

    if arr[mid] < value
      first = mid + 1
    elsif arr[mid] > value
      last = last - 1
    end
  end
  return nil
end

arr = [1, 4, 5, 11]

print "result: "
print bin_search_r(arr, 111, 0, arr.length-1)
puts "\n"