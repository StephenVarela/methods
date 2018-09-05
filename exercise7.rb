def wrap_text(my_text, wrap)
  return "#{wrap}#{my_text}#{wrap}"
end

first = wrap_text('new message', '###')
second = wrap_text(first,'===')
third = wrap_text(second,'---')
puts(third)
