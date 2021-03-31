# Корзина пользователя в Интернет-магазине определена следующим массивом
# (qty - количество единиц товара, которое пользователь хочет купить, type - тип):
# cart = [
#   { type: :soccer_ball, qty: 2 },
#   { type: :tennis_ball, qty: 3 }
# ]
# А наличие на складе следующим хешем:
# inventory = {
#   soccer_ball: { available: 2, price_per_item: 100 },
#   tennis_ball: { available: 1, price_per_item: 30 },
#   golf_ball: { available: 5, price_per_item: 5 }
# }
# Написать программу, которая выводит на экран цену всех товаров в корзине (total), а
# также сообщает - возможно ли удовлетворить запрос пользователя - набрать все единицы
# товара, которые есть на складе.

cart = [
  { type: :soccer_ball, qty: 2 },
  { type: :tennis_ball, qty: 3 }
]

inventory = {
  soccer_ball: { available: 2, price_per_item: 100 },
  tennis_ball: { available: 1, price_per_item: 30 },
  golf_ball: { available: 5, price_per_item: 5 }
}

total = 0

cart.length.times do |i|
  total += case cart[i][:type]
           when :soccer_ball
             cart[i][:qty] * inventory[:soccer_ball][:price_per_item]
           when :tennis_ball
             cart[i][:qty] * inventory[:tennis_ball][:price_per_item]
           else
             cart[i][:qty] * inventory[:golf_ball][:price_per_item]
           end
end

puts "Сумма товаров: #{total}"

cart.length.times do |i|
  if cart[i][:type] == :soccer_ball && cart[i][:qty] > inventory[:soccer_ball][:available]
    puts 'Невозможно преобрести товар: Футбольный мяч.'
    puts "Корзина #{cart[i][:qty]}"
    puts "В наличии: #{inventory[:soccer_ball][:available]}"
  elsif cart[i][:type] == :tennis_ball && cart[i][:qty] > inventory[:tennis_ball][:available]
    puts 'Невозможно преобрести товар: Теннисный мяч.'
    puts "Корзине #{cart[i][:qty]}"
    puts "В наличии: #{inventory[:tennis_ball][:available]}"
  end
end
