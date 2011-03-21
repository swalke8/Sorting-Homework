class Sort 
	def bubble_sort(someArray)
		size = someArray.length-1
		for iteration in 0...size do
			for index in 0...(size-iteration) do
				if someArray[index] > someArray[index+1]
					temp = someArray[index]
					someArray[index] = someArray[index+1]
					someArray[index+1] = temp
				end
			end
		end
		someArray
	end

	def insertion_sort(someArray)
		sortedArray = []
		while someArray.length>0
			minimum = 0
			for index in 0...someArray.length do
				minimum = index if someArray[index] < someArray[minimum]
			end
			sortedArray.push(someArray[minimum])
			someArray.delete_at(minimum)
		end
		sortedArray
	end

	def merge_sort(someArray)
		size = someArray.length
		if size <= 1
			return someArray	
		else
			middle = size/2
			leftArray = Array.new(someArray[0...middle])
			rightArray = Array.new(someArray[middle...size])
			leftArray = merge_sort(leftArray)
			rightArray = merge_sort(rightArray)
			sortedArray = Array.new(merge(leftArray, rightArray))

			return sortedArray
		end
	end

	def merge(leftArray, rightArray)
		result = []
		while leftArray.length > 0 || rightArray.length > 0
			if leftArray.length > 0 && rightArray.length > 0
				if leftArray[0] < rightArray[0]
					result.push(leftArray.delete_at(0))
				else
					result.push(rightArray.delete_at(0))
				end
			elsif leftArray.length > 0
				result.push(leftArray.delete_at(0))
			else 
				result.push(rightArray.delete_at(0))
			end
		end

		result
	end

	def quick_sort(someArray)
		if someArray.length <= 1
			return someArray
		else
			pivot = someArray.pop
			lessThanPivot = []
			greaterThanPivot = []

			someArray.each do |element|
				if element < pivot
					lessThanPivot.push(element)
				else
					greaterThanPivot.push(element)
				end
			end
		end
		return Array.new(quick_sort(lessThanPivot), pivot, quick_sort(greaterThanPivot))
	end
end
	
