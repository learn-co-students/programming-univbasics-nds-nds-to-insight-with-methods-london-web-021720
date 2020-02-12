$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    sum = 0 
    counter3 = 0
    size_director = director_data[:movies].size 
    while counter3 < size_director do 
      sum = sum + director_data[:movies][counter3][:worldwide_gross]
      counter3 += 1 
    end
    sum
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  size_data = nds.size 
  counter2 = 0 
  while counter2 < size_data do
    result[nds[counter2][:name]] = gross_for_director(nds[counter2])
    counter2 += 1 
  end
  result
end





