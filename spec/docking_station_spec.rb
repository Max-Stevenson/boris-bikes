require 'docking_station.rb'

describe DockingStation do
	it {is_expected.to respond_to :bike}

	describe '#release_bike' do
		it "releases a Bike object" do
			object = subject.release_bike()
			expect(object).to be_a_kind_of(Bike)
		end
	end

	describe '#dock_bike' do
		it "store a bike argument as an attribute of a Docking Station instance" do
			bike = Bike.new
			expect(subject.dock_bike(bike)).to eq bike
		end
	end

	describe 'No bikes available' do
		it "throws an error if release bike is called on a empty docking station" do
			expect { DockingStation.new.release_bike }.to raise_error("No bikes available")
		end
	end
end