vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicles)
  vehicles.uniq.each do |type|
    puts "#{type} => #{vehicles.count(type)}"
  end
end

count_occurrences(vehicles)
