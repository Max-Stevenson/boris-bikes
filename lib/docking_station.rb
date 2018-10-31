class DockingStation
	attr_reader :bike
	def release_bike
		if self.bike == nil
			raise "No bikes available"
		else
			@bike
		end
	end

	def dock_bike (bike)
		if self.bike.is_a?(Bike)
			raise "No capacity"
		else
			@bike = bike
		end
	end
end