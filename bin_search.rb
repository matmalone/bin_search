# recursive
def bin_search_r(arr, value, first, last)
  mid = (last - first) / 2 + first

  # not found
  if last < first
    return nil 
  end

  # found
  if arr[mid] == value
    return mid
  end

  if arr[mid] < value
    return bin_search_r(arr, value, mid+1, last)
  elsif arr[mid] > value
    return bin_search_r(arr, value, first, last-1)
  end
end


# iterative
def bin_search(arr, value, first, last)
  while first <= last
    mid = (last - first) / 2 + first

    # found
    if arr[mid] == value
      return mid
    end

    if arr[mid] < value
      first = mid + 1
    elsif arr[mid] > value
      last = last - 1
    end
  end

  # not found
  return nil
end


arr = [1, 4, 5, 11]
value = 4

print "recursive result: "
print bin_search_r(arr, value, 0, arr.length-1)
print "\n"

print "iterative result: "
print bin_search(arr, value, 0, arr.length-1)
print "\n"
