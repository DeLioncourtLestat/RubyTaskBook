# Task 1 - 2  Дан целочисленный массив.
# Необходимо вывести вначале его элементы с четными индексами,
# а затем - с нечетными.

array = [1, 2, 3, 4, 5, 6, 7]
puts "task1"
#Четные
puts "Even"
array.each_index {|index|
  if index.even?
    puts index
end}

puts "task2"
#Нечетные
puts "Odd"
array.each_index {|index|
  if index.odd?
    puts index
end}

# Task 3 Дан целочисленный массив.
# Вывести номер первого из тех его элементов,которые удовлетворяют двойному неравенству:
# A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].

puts "task3"
i = array.each.find do |a|
  a > array[0] && a < array[-1]
end
p i

# Task 4 Дан целочисленный массив.
# Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству:
# A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].

puts "task4"
ar = array.each.find_all do |a|
  a > array[0] && a < array[-1]
end
p ar.last

# Task 5 Дан целочисленный массив.
# Преобразовать его, прибавив к четным числам первый элемент.
# Первый и последний элементы массива не изменять.

puts "task5"
ar = array.collect do |a|
  if a != array[0] && a != array[-1]
    a.even? ? a += array.first : a
  else a
  end
end
p ar

# Task 6 Дан целочисленный массив.
# Преобразовать его, прибавив к четным числам последний элемент.
# Первый и последний элементы массива не изменять.

puts "task6"
ar = array.collect do |a|
  if a != array[0] && a != array[-1]
    a.even? ? a += array.last : a
  else a
  end
end
p ar

# Task 7 Дан целочисленный массив.
# Преобразовать его, прибавив к нечетным числам последний элемент.
# Первый и последний элементы массива не изменять.

puts "task7"
ar = array.collect do |a|
  if a != array[0] && a != array[-1]
    a.odd? ? a += array.last : a
  else a
  end
end
p ar

# Task 8 Дан целочисленный массив.
# Преобразовать его, прибавив к нечетным числам первый элемент.
# Первый и последний элементы массива не изменять.

puts "task8"
ar = array.collect do |a|
  if a != array[0] && a != array[-1]
    a.odd? ? a += array.first : a
  else a
  end
end
p ar

# Task 9 Дан целочисленный массив.
# Заменить все положительные элементы на значение минимального.

puts "task9"
array = [1, -2, 3, 8, 5, 11, 2, -12, 38]
ar = array.collect do |a|
  a > 0 ? a = array.min : a
end
p ar

# Task 10 Дан целочисленный массив.
#Заменить все положительные элементы на значение максимального.

puts "task10"
array = [1, -2, 3, 8, 5, 11, 2, -12, 38]
ar = array.collect do |a|
  a > 0 ? a = array.max : a
end
p ar


# Task 11 Дан целочисленный массив.
#Заменить все отрицательные элементы на значение минимального.
puts "task11"
array = [1, -2, 3, 8, 5, 11, 2, -12, 38]
ar = array.collect do |a|
  a < 0 ? a = array.min : a
end
p ar

# Task 12 Дан целочисленный массив.
#Заменить все отрицательные элементы на значение максимального.
puts "task12"
array = [1, -2, 3, 8, 5, 11, 2, -12, 38]
ar = array.collect do |a|
  a < 0 ? a = array.max : a
end
p ar
