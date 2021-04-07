def division_2(name = '', age = nil, weight = 71)
  puts 'My name is ' + name
  puts 'My age is ' + age.to_s
  puts 'My weight is ' + "#{weight}"
  puts '_____'
end

division_2('Dasha', 21)
division_2('Pasha', 25, 78)
division_2('Sasha', 35, 70)
division_2 'Anton'
