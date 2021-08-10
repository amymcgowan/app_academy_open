require_relative "room"

class Hotel
  
    def initialize(name, capacities)
        @name = name
        @rooms = {}

        capacities.each do |room_name, capacity| 
            @rooms[room_name] = Room.new(capacity)
        end
    end

    # #join can be added onto the end of the method block
    def name
        @name.split(" ").map(&:capitalize).join(" ")
    end

    def rooms
        @rooms
    end

    # I originally spelled out if/return true/else/return false
    # but I don't need this since it already returns a boolean 
    def room_exists?(room_name)
        @rooms.has_key?(room_name)
    end

    def check_in(person, room_name)
        if self.room_exists?(room_name)
            if @rooms[room_name].add_occupant(person)
                puts "check in successful"
            else
                puts "sorry, room is full"
            end
        else
            puts "sorry, room does not exist"
        end
    end

    def has_vacancy?
        @rooms.keys.any? { |room| !@rooms[room].full? }
    end

    def list_rooms
        @rooms.each do |room_name, room|
            puts "#{room_name} : #{room.available_space}"
        end
    end
end
