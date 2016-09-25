class Zombie < ActiveRecord::Base
	before_save :make_rotting
	scope :rotting, -> {
  	where(rotting: true)
	}

	def make_rotting
		self.rotting = true if age > 20

		#same as:
		# if @zombie.age > 20
		# 	@zombie.rotting = true
		# end
	end
end
