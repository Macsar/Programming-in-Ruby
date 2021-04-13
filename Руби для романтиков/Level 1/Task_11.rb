# Запишите следующие примеры при помощи тернарного оператора:
# Пример 1:
# if friends_are_also_coming?
#   go_party
# else
#   stay_home
# end

# Пример 2:
# if friends_are_also_coming? && !is_it_raining
#   go_party
# else
#   stay_home
# end

friends_are_also_coming? ? go_party : stay_home
friends_are_also_coming? && !is_it_raining ? go_party : stay_home
