require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    end
    i = i + 1
  end
end

collection = (1..100).to_a #.to_a turns an object into an array
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }
