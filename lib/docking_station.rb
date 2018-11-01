class DockingStation
	attr_reader :bikes

	def initialize
		@bikes = []
	end


	def release_bike
		if self.bikes.empty?
			raise "No bikes available"
		else
			@bikes.pop
		end
	end

	def dock_bike (bike)
		if self.bikes.length >= 20
			raise "No capacity"
		else
			@bikes << bike
		end
	end
end