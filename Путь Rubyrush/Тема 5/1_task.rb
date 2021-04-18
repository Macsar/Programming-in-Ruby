# Написать программу, которая выводит массив чисел от 1 до N. И выводит сумму всех чисел этого массива.
# Число N спрашивается у пользователя из консоли.

print 'Введите N: '
n = gets.chomp.to_i
arr = Array.new(n) { |index| index + 1 }
sum = 0

arr.each do |item|
  sum += item
end

puts sum
