#re-open the class Array, re-implement collect and collec! nethods
# Collect! methods permanently modifies the reciever.
class Array
	def collect
		ra = []
		self.each do |value|
			ra << yield(value)
		end
		return ra
	end

	def collect!
		index = 0
		self.each do |value|
			self[index] = yield(value)
			index += 1
		end
		
	end
end







