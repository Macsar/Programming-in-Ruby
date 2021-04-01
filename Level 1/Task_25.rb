# Центр Управления Полетами поручил вам задание написать метод “launch” (от
# англ. “запуск”), который будет принимать набор опций в виде хеша и отправлять в космос
# астронавтов “Белку” и/или “Стрелку”. Метод должен принимать следующие параметры:
# `angle` - угол запуска ракеты. Если не задан, то значение по-умолчанию равно 90 (градусов)
# `astronauts` - массив символов (:belka, :strelka), если не задан, то в космос нужно
# отправлять и Белку, и Стрелку.
# `delay` - количество секунд через которые запустить ракету, если не задано, то равно пяти
# Метод должен вести подсчет оставшихся до запуска секунд (например: “Осталось секунд:
# 5 4 3 2 1”). После истечения задержки, метод должен выводить сообщение о том, какой
# астронавт (астронавты) запущены, а также под каким углом была запущена ракета. Метод
# может принимать любое количество параметров (ноль, один, два, три). Возможные варианты вызова метода:
# `launch`
# `launch(angle: 91)`
# `launch(delay: 3)`
# `launch(delay: 3, angle: 91)`
# `launch(astronauts: [:belka])`
# и т.д.

def launch(options = {})
  angle = options[:angle] || 90
  astronaut = options[:astronauts] || [{ name: 'Белка' }, { name: 'Стрелка' }]
  delay = options[:delay] || 5

  controller(delay, astronaut, angle)
end

def controller(delay, astronaut, angel)
  puts 'До запуска осталось:'

  delay.downto(1) do |i|
    puts i
    sleep 1
  end

  if astronaut.length == 1
    print "Астронавт запущен: #{astronaut[0][:name]}"
  else
    print 'Астронавты запущены: '

    astronaut.length.times do |i|
      print astronaut[i][:name]
      print ', ' if astronaut[i + 1] != nil?
    end
  end

  puts
  puts "Угол запуска: #{angel}"
end

launch(delay: 3, angle: 91, astronauts: [{ name: 'Белка' }])
