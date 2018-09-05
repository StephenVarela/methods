def get_distance(person_number)
  puts "How far did person #{person_number} run (in meters)?"
  distance = gets.chomp.to_f
  return distance
end

def get_time(person_number, distance)
  puts "How long (in minutes) did person 1 run take to run #{distance} metres?"
  minutes = gets.chomp.to_f
  return minutes
end

def calculate_speed(meters, minutes)
  seconds = minutes * 60
  return meters/seconds
end

def get_speed(person_number)
  distance = get_distance(person_number)
  minutes = get_time(person_number, distance)
  return calculate_speed(distance, minutes)
end

def display_winner(number, speed)
  puts "person #{number} was the fastest at #{speed} m/s"
end

def display_tie(speed)
  puts "Everyone tied at #{speed} m/s"
end

def compare_3_runners
  speed1 = get_speed(1)
  speed2 = get_speed(2)
  speed3 = get_speed(3)

  if speed3 > speed2 && speed3 > speed1
    display_winner(3,speed3)
  elsif speed2 > speed3 && speed2 > speed1
    display_winner(2,speed2)
  elsif speed1 > speed3 && speed1 > speed2
    display_winner(1,speed1)
  elsif speed1 == speed2 && speed2 == speed3
    display_tie(speed1)
  else
    puts "Well done everyone!"
  end
end

compare_3_runners();
