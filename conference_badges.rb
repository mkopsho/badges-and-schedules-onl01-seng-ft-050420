def badge_maker(speaker)
  "Hello, my name is #{speaker}."
end

def batch_badge_creator(speakers_array)
  speakers_array.collect do |name|
    "Hello, my name is #{name}."
  end
end

def assign_rooms(speakers_array)
  new_array = []
  speakers_array.each_with_index do |speaker, index|
    new_array << "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  end
  new_array
end


#Now you have to tell the printer what to print. Create a method called `printer` that will output first the results of the `batch_badge_creator` method and then of the `assign_rooms` method to the screen.
#  * *Hint*: Remember that methods can call other methods. If the return value of `assign_rooms` is an array of room assignments, how can you print out each assignment? You'll need to iterate over your array of room assignments in order to `puts` out each individual assignment.

def printer(attendees)
  attendees.each do |speaker|
    puts "Hello, my name is #{speaker}."
  end
  assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end