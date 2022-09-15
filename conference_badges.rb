require 'pry'
def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator attendees
    attendees.map{|person| badge_maker person }
end

def assign_rooms attendees
    attendees.map.with_index(1){|a, index| "Hello, #{a}! You'll be assigned to room #{index}!"}
end

def printer attendees
    badges = batch_badge_creator(attendees)
    badges.each{|string| puts string}
    assignments = assign_rooms(attendees)
    assignments.each {|message| puts message}
end

printer(["Carol", "Esdgel"])
