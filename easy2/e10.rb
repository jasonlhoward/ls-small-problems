# Mutation

# What will the following code print, and why?
# Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
# a new array name array2 is created
# array1 and array2 do not have be same object_id's
array1.each { |value| array2 << value }
# the values of array1 and being put into array2
# they still don't have the same object_id's

# here's where it gets confusing...

# what we're really moving into array2 are object_id's
# array[0].object_id == array2[0].object_id

array1.each { |value| value.upcase! if value.start_with?('C', 'S') }

# .upcase! mutates the caller and the caller is the object_id, not
# the string value it points at. This means that the value of the
# object_id is getting changed and because the object points to the
# same value, both values are being changed

p array1
p array2

p array1.object_id == array2.object_id
p array1[0].object_id == array2[0].object_id
