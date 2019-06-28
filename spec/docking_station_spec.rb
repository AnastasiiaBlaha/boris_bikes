require 'docking_station'
require 'bike'

describe DockingStation do
    it 'responds to release_bike' do
        expect(subject).to respond_to :release_bike
    end

    describe '#initialize' do
        context 'with paramenters' do
            let(:docking_station) {DockingStation.new(40)}

            it 'should use specified values' do
                expect(docking_station.capacity).to eq(40)
            end
        end

        context 'without parameters' do
            let(:docking_station) {DockingStation.new}

            it 'uses default values' do
                expect(docking_station.capacity).to eq(20) 
            end
        end
    end

    describe '#release_bike' do
        it 'raises an error if no bikes' do
            expect { subject.release_bike }.to raise_error 'No bikes available'
        end
    end

    it 'docks bike' do
        expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it 'checks if the there is a bike' do
        expect(subject).to respond_to :bikes_array
    end

    it 'returns docked bike' do
        bike = Bike.new
        subject.dock_bike(bike)
        expect(subject.bikes_array).to include bike
    end
    
    describe '#dock_bike' do
      it 'rarises an error when there are more than 20 bikes in the docking station' do
         new_station = DockingStation.new
         new_station.capacity.times do
         new_station.dock_bike Bike.new  
         end
            expect { new_station.dock_bike Bike.new }.to raise_error 'Docking station full' 
      end
    end

end
