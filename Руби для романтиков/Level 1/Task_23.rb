# Задайте базу данных (хеш) своих контактов. Для каждого контакта (фамилия)
# может быть задано три параметра: email, cell_phone (номер моб.телефона), work_phone
# (номер рабочего телефона). Напишите программу, которая будет спрашивать фамилию и
# выводить на экран контактную информацию.

contacts = {
  contact1: {
    surname: 'Фамилия 1',
    email: '123@yandex.ru',
    cell_phone: 89999999999,
    work_phone: 87777777777
  }, contact2: {
    surname: 'Фамилия 2',
    email: '123@yandex.ru',
    cell_phone: 89999999999,
    work_phone: 87777777777
  }, contact3: {
    surname: 'Фамилия 3',
    email: '123@yandex.ru',
    cell_phone: 89999999999,
    work_phone: 87777777777
  }, contact4: {
    surname: 'Фамилия 4',
    email: '123@yandex.ru',
    cell_phone: 89999999999,
    work_phone: 87777777777
  }
}

def main_loop(obj)
  loop do
    resp = search_contact(controller, obj)
    puts

    if resp != ''
      puts 'Контакт найден'
      puts "Фамилия: #{resp[:surname]}"
      puts "Email: #{resp[:email]}"
      puts "Телефон: #{resp[:cell_phone]}"
      puts "Рабочий телефон: #{resp[:work_phone]}"
    else
      puts 'Контакт не найден'
    end

    puts 'Продолжить поиски? (да/нет)'
    continue = gets.chop

    exit if continue == 'нет'
  end
end

def search_contact(surname, contacts)
  resp = ''

  contacts.each_value do |value|
    resp = value if value[:surname] == surname
  end

  resp
end

def controller
  print 'Введите фамилию контакта: '
  gets.chop
end

main_loop(contacts)
