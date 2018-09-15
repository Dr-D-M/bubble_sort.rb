def bubble_sort array
	return array if array.length < 2
	switchy = true
	while switchy do
		switchy = false
		for index in 0..array.length-2
			if array[index] > array[index+1]
				array[index], array[index+1] = array[index+1], array[index]
				switchy = true
			end
		end
	end
		array
end
numbers = [4,3,78,2,0,2]
puts bubble_sort(numbers);


def bubble_sort_by array
	bubble_sort(array) do |left, right|
		yield left, right
	end
end
result = bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end

puts result

