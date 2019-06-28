class DockingStation
    DEFAULT_CAPACITY = 20

    attr_reader :bikes_array, :capacity

    def initialize(capacity=DEFAULT_CAPACITY)
       @capacity = capacity
       @bikes_array = []
    end

    def release_bike
        fail 'No bikes available' if empty?
        @bikes_array.each do |bike|
          if bike.broken? == true
            next
          elsif bike.broken? == false
            return bike
          end
        end
    end

    def dock_bike(bike)
        raise 'Docking station full' if full?
        @bikes_array << bike
    end

    private

      def full?
       @bikes_array.count >= @capacity
      end

      def empty?
        @bikes_array.empty?
      end

end
