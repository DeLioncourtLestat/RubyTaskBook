# Task 1 - 2  Дан целочисленный массив. Необходимо вывести вначале
# его элементы с четными индексами, а затем - с нечетными.

array = (1..7).to_a


#Четные
puts "Even"
puts array.select {|a| a.even?}
puts array.find_all {|a| a % 2 == 0}

puts "Odd"
ar = array.select do |a|
   a.odd?
end
p ar

puts array.find_all {|a| a % 2 != 0}



# Task 3 Дан целочисленный массив. Вывести номер первого из тех его элементов,
# которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].

i = array.each.find do |a|
  a > array[0] && a < array[-1]
end
p i
