# how I'd actually do this
def repeat(str, count)
  count.times { puts str }
end

# some of the other ways it can be done
def repeat_while(str, count)
  while count > 0 do
    count -= 1
    puts str
  end
end

def repeat_while2(str, count)
  begin
    count -= 1
    puts str
  end while count > 0
end

def repeat_loop(str, count)
  loop do
    puts str
    count -= 1
    break if count.zero?
  end
end

def repeat_for(str, count)
  for i in (1..count) do
    puts str
  end
end

def repeat_each(str, count)
  (1..count).each { puts str }
end

repeat('Hello', 3)