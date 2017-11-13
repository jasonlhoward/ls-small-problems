name = 'Bob'
save_name = name
# save_name and name have the same object_id and are pointing
# at the same value
name = 'Alice'
# a new variable named name as been created
# save_name is still pointing at the previous value
puts name, save_name
# prints "Alice" then "Bob"

name = 'Bob'
save_name = name
# save_name and name have the same object_id
name.upcase!
# .upcase! mutates the caller so the value that
# name and save_name are pointing at has been changed
puts name, save_name
# should print "BOB" and "BOB"
