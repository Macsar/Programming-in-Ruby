# “Лунный магазин”. Используя хеш с новым весом из предыдущего задания (Task_18)
# напишите программу, которая для каждого типа спрашивает пользователя какое
# количество мячей пользователь хотел бы купить в магазине (ввод числа из консоли). В
# конце программа выдает общий вес всех товаров в корзине. Для сравнения программа
# должна также выдавать общий вес всех товаров, если бы они находились на Земле.

# Купленные товары
@basket = {}

# Вес на земле
obj_earth = {
  soccer_ball: 410,
  tennis_ball: 58,
  golf_ball: 45
}

# Вес на луне
obj_moon = {
  soccer_ball: (obj_earth[:soccer_ball].to_f / 6).round(2),
  tennis_ball: (obj_earth[:tennis_ball].to_f / 6).round(2),
  golf_ball: (obj_earth[:golf_ball].to_f / 6).round(2)
}

puts 'Добро пожаловать в <<Лунный Магазин>>'

print 'Количество футбольных мячей: '
soccer_ball = gets.to_i
@basket[:soccer_ball] = soccer_ball

print 'Количество теннисных мячей: '
tennis_ball = gets.to_i
@basket[:tennis_ball] = tennis_ball

print 'Количество мячей для гольфа: '
golf_ball = gets.to_i
@basket[:golf_ball] = golf_ball

sleep 1

earth_weight =
  @basket[:soccer_ball] * obj_earth[:soccer_ball] +
  @basket[:tennis_ball] * obj_earth[:tennis_ball] +
  @basket[:golf_ball] * obj_earth[:golf_ball]

moon_weight =
  @basket[:soccer_ball] * obj_moon[:soccer_ball] +
  @basket[:tennis_ball] * obj_moon[:tennis_ball] +
  @basket[:golf_ball] * obj_moon[:golf_ball]

puts
puts "Общий вес всех товаров в корзине на Земле: #{earth_weight}"
puts "Общий вес всех товаров в корзине на Луне: #{moon_weight}"
