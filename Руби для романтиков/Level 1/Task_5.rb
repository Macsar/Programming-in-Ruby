# Известно, что стоимость дома - 500 тысяч долларов. Человек берет дом в
# кредит по ставке 4% годовых на оставшуюся сумму на 30 лет. Написать программу,
# которая посчитает количество денег (total), которые мы заплатим только в виде
# процентов по кредиту за 30 лет

# Стоимость дома
price_house = 500_000
# На сколько лет
years = 30
# Ставка кредита
credit = 0.04
# Внесено средств всего
total_payouts = 0
# Оплата кредита за год
annual_payment = price_house / years
# Внесено за кредит
total_credit = 0

years.times do
  total_payouts += annual_payment
  total_credit += (price_house - total_payouts) * credit
end

puts "За 30 лет по кредиту внесено: #{total_credit}"
