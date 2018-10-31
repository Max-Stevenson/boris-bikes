require 'docking_station.rb'

describe DockingStation do
	it {is_expected.to respond_to :bike}

	describe '#release_bike' do
		it "creates a new instance of a Bike" do
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
end