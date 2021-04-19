# Напишите программу, которая перевернет порядок элементов любого исходного массива.
# Переверните массив сами с помощью цикла.
# Не используя встроенные методы reverse или reverse!

arr = Array.new(10) { |index| index + 1 }
new_arr = []

arr.each do |item|
  new_arr.unshift(item)
end

puts "Исходный массив: #{arr}"
puts "Новый массив: #{new_arr}"
