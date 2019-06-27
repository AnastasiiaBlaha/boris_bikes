class DockingStation

    attr_reader :bikes_array

    def initialize
       @bikes_array = []
    end

    def release_bike
        fail 'No bikes available' if empty?
        @bikes_array.pop
    end

    def dock_bike(bike)
        raise 'Docking station full' if full?
        @bikes_array << bike
    end

    private

      def full?
       @bikes_array.count >= 20
      end

      def empty?
        @bikes_array.empty?
      end

end
