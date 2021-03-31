# используя инициализированный хеш вида:
# obj = {
#   soccer_ball: 410,
#   tennis_ball: 58,
#   golf_ball: 45
# }
# Напишите код, который адаптирует этот хеш для условий на Луне. Известно, что вес на
# луне в 6 раз меньше, чем вес на Земле.

obj_earth = {
  soccer_ball: 410,
  tennis_ball: 58,
  golf_ball: 45
}

obj_moon = {
  soccer_ball: (obj_earth[:soccer_ball].to_f / 6).round(2),
  tennis_ball: (obj_earth[:tennis_ball].to_f / 6).round(2),
  golf_ball: (obj_earth[:golf_ball].to_f / 6).round(2)
}

puts obj_moon
