class DockingStation
	attr_accessor :capacity, :bikes
	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@capacity = capacity
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
		if self.bikes.length >= DEFAULT_CAPACITY
			raise "No capacity"
		end
	end

	def empty?
		if self.bikes.empty?
			raise "No bikes available"
		end
	end
end