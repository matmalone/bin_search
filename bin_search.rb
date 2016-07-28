# recursive by keeping the same array and keeping pointers to the start and end of the sub-array
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
    return bin_search_r(arr, value, first, mid-1)
  end
end

# recursive by slicing the arrays and then adding back the offset when returning
def bin_search_r2(arr, value)
  mid = arr.length / 2

  # found
  if arr[mid] == value
    return mid
  end

  # not found
  if arr.length <= 1    
    return nil
  end

  if arr[mid] < value
    rval = bin_search_r2(arr[mid+1..arr.length-1], value)
    if rval == nil
      return nil
    else
      return mid + 1 + rval
    end
  elsif arr[mid] > value
    return bin_search_r2(arr[0..mid-1], value)
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


arr = [1, 4, 5, 11, 12, 13, 22, 55, 66, 77, 99]
value = 0

print "recursive result: "
print bin_search_r(arr, value, 0, arr.length-1)
print "\n"

print "recursive2 result: "
print bin_search_r2(arr, value)
print "\n"

print "iterative result: "
print bin_search(arr, value, 0, arr.length-1)
print "\n"
