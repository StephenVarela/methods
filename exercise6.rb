def F_to_C(temp_F)
  fahrenheit = temp_F.to_i
  celsius = (fahrenheit - 32.0) * 5.0/9.0
  return celsius
end

puts "What is the temperature in fahrenheit"
user_input = gets.chomp;

puts "It is #{F_to_C(user_input)} celsius"
