# rulers/lib/rulers/array.rb

class Array
	def sum(start = 0)
		inject(start, &:+)
	end

	def binary_search(target)
		lo, hi = 0, size - 1;
		while lo <= hi do
			mid = (lo + hi) / 2
			if self[mid] == target
				return self[mid]
			elsif self[mid] < target
				lo = mid + 1
			else
				hi = mid - 1
			end
		end
		-1
	end


end