class DockingStation
	attr_reader :bikes

	def initialize
		@bikes = []
	end

	def release_bike
		if empty?
		else
			@bikes.pop
		end
	end

	def dock_bike (bike)
		if full?
		else
			@bikes << bike
		end
	end

	private 
	
	def full?
		if self.bikes.length >= 20
			raise "No capacity"
		end
	end

	def empty?
		if self.bikes.empty?
			raise "No bikes available"
		end
	end
end