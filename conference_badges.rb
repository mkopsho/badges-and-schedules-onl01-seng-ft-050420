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

def printer(attendees)
  attendees.each do |speaker|
    puts "Hello, my name is #{speaker}."
  end
  assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end