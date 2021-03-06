# Сделайте так, чтобы приветствие каждый раз тоже было случайным:
# "Привет, дорогой друг. Отвечаю на твой вопрос..."
# "Кто вопрошает, тот получит ответ:"
# "Здравствуй, смертный. Сегодня для тебя такой ответ:"

answers = [
  # положительные
  'Бесспорно',
  'Предрешено',
  'Никаких сомнений',
  'Определённо да',
  'Можешь быть уверен в этом',

  # нерешительно положительные
  'Мне кажется — «да»',
  'Вероятнее всего',
  'Хорошие перспективы',
  'Знаки говорят — «да»',
  'Да',

  # нейтральные
  'Пока не ясно, попробуй снова',
  'Спроси позже',
  'Лучше не рассказывать',
  'Сейчас нельзя предсказать',
  'Сконцентрируйся и спроси опять',

  # отрицательные
  'Даже не думай',
  'Мой ответ — «нет»',
  'По моим данным — «нет»',
  'Перспективы не очень хорошие',
  'Весьма сомнительно'
]

hello = [
  'Привет, дорогой друг. Отвечаю на твой вопрос...',
  'Кто вопрошает, тот получит ответ:',
  'Здравствуй, смертный. Сегодня для тебя такой ответ:'
]

puts hello.sample
puts
puts answers.sample
