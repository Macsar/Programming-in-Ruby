# Напишите программу “иммигрант”. Программа должна задавать следующие
# вопросы: “У вас есть высшее образование? (y/n)”, “У вас есть опыт работы
# программистом? (y/n)”, “У вас более трех лет опыта? (y/n)”. За каждый положительный
# ответ начисляется 1 балл (переменную можно назвать score). Если набралось 2 или
# более баллов программа должна выводить на экран “Добро пожаловать в США”.

score = 0

puts 'У вас есть высшее образование? (да/нет)'
answ1 = gets.chop
score += 1 if answ1 == 'да'

puts 'У вас есть опыт работы программистом? (да/нет)'
answ2 = gets.chop
score += 1 if answ2 == 'да'

puts 'У вас более трёх лет опыта? (да/нет)'
answ2 = gets.chop
score += 1 if answ2 == 'да'

puts 'Добро пожаловать в США' if score >= 2
