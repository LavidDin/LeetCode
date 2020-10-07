class ParkingSystem

=begin
    :type big: Integer
    :type medium: Integer
    :type small: Integer
=end
    def initialize(big, medium, small)
        @big = big
        @medium = medium
        @small = small
        @parked_big = 0
        @parked_medium = 0
        @parked_small = 0
    end


=begin
    :type car_type: Integer
    :rtype: Boolean
=end
    def add_car(car_type)
        if car_type == 3
            if @parked_small == @small
                return false
            else
                @parked_small +=1
                return true
            end
        elsif car_type == 2
            if @parked_medium == @medium
                return false
            else
                @parked_medium +=1
                return true
            end
        elsif car_type == 1
            if @parked_big == @big
                return false
            else
                @parked_big +=1
                return true
            end
        end
    end


end

# Your ParkingSystem object will be instantiated and called as such:
# obj = ParkingSystem.new(big, medium, small)
# param_1 = obj.add_car(car_type)