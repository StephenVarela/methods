def is_long_string(my_string)
  if(my_string.length < 8)
    return false
  else
    return true
  end
end

puts is_long_string("HI")
puts is_long_string("HIIIIIIIIIIIIIII")
