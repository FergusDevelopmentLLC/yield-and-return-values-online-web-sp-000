require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

def show_array
  return [1, 2, 3]
end

myArray = hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
puts(myArray).to_s
