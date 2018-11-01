require 'docking_station.rb'

describe DockingStation do
	let(:station) {station = DockingStation.new}
	let(:bike) {bike = Bike.new}

	it {is_expected.to respond_to :bikes}

	describe '#release_bike' do
		it "releases a Bike object" do
			station.dock_bike(bike)
			expect(station.release_bike).to be_a_kind_of(Bike)
		end
	end

	describe 'releases working bikes' do
		it 'docking station should release working bikes' do
			station.dock_bike(bike)
    	expect(station.release_bike).to be_working
  	end
  end

	describe '#dock_bike' do
		it "store a bike argument as an attribute of a Docking Station instance" do
			expect(station.dock_bike(bike)[0]).to eq bike
		end
	end

	describe 'no bikes available' do
		it "throws an error if release bike is called on a empty docking station" do
			expect { station.release_bike }.to raise_error("No bikes available")
		end
	end

	describe 'no capacity' do 
		it "throws an error if store bike is called on a full docking station" do
			DockingStation::DEFAULT_CAPACITY.times { station.dock_bike(Bike.new) }
			expect { station.dock_bike(Bike.new) }.to raise_error("No capacity")
		end
	end

	describe 'default capacity' do
  	it 'has a default capacity' do
    	expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
  	end
  end

  describe 'variable capacity' do
  	it 'has a variable capacity' do
  		capacity = rand(10)
  		var_station = DockingStation.new(capacity)
  		expect(var_station.capacity).to eq(capacity)
  	end
  end
end