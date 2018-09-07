train_array = [
{:train => "72C", :frequency_in_minutes => 15,:direction => "north"},
{:train => "72D", :frequency_in_minutes => 15,:direction => "south"},
{:train => "610", :frequency_in_minutes => 5, :direction => "north"},
{:train => "611", :frequency_in_minutes => 5, :direction => "south"},
{:train => "80A", :frequency_in_minutes => 30,:direction => "east"},
{:train => "80B", :frequency_in_minutes => 30,:direction => "west"},
{:train => "110", :frequency_in_minutes => 15,:direction => "north"},
{:train => "111", :frequency_in_minutes => 15,:direction => "south"}
]

#1.
train_111_direction = train_array[7][:direction]
puts train_111_direction
puts "---------------------"
#2.
train_80b_frequancy = train_array[5][:frequency_in_minutes]
puts  train_80b_frequancy
puts "---------------------"
#3.
train_610_direction = train_array[2][:direction]
puts train_610_direction
puts "---------------------"
#4.
# array_train_travelling_north = []
# train_array.each do |train|
#   if train[:direction] == "north"
#     array_train_travelling_north << train[:train]
#   end
# end
# puts array_train_travelling_north
# puts "---------------------"
# #5.
# array_train_travelling_east = []
# train_array.each do |train|
#   if train[:direction] == "east"
#     array_train_travelling_east << train[:train]
#   end
# end
# puts  array_train_travelling_east
# puts "---------------------"
# #6.
def list_of_train_direction(direction,trains)
  train_list = []
  trains.each do |train|
    if direction == train[:direction]
      train_list << train[:train]
    end
  end
  return train_list
end

puts list_of_train_direction("north",train_array)
puts "---------------------"
puts list_of_train_direction("east",train_array)
puts "---------------------"

#7.
train_array[0].merge!(:first_departure_time => 6)
puts train_array
