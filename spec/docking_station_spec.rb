require 'docking_station.rb'

describe DockingStation do
	it {is_expected.to respond_to :bike}

	describe '#release_bike' do
		it "releases a Bike object" do
			station = subject.dock_bike(Bike.new)
			object = subject.release_bike
			expect(object).to be_a_kind_of(Bike)
		end
	end

	describe 'releases working bikes'
		it 'docking station should release working bikes' do
    	station = subject.dock_bike(Bike.new)
    	bike = subject.release_bike
    	expect(bike).to be_working
  	end

	describe '#dock_bike' do
		it "store a bike argument as an attribute of a Docking Station instance" do
			bike = Bike.new
			expect(subject.dock_bike(bike)).to eq bike
		end
	end

	describe 'no bikes available' do
		it "throws an error if release bike is called on a empty docking station" do
			expect { DockingStation.new.release_bike }.to raise_error("No bikes available")
		end
	end

	describe 'no capacity' do 
		it "throws an error if store bike is called on a full docking station" do
			subject.dock_bike(Bike.new)
			expect {subject.dock_bike(Bike.new)}.to raise_error("No capacity")
		end
	end
end