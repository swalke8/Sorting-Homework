require 'Sort'

sort = Sort.new

describe sort do
	bubbleSortArray = [3,1,4,1,5,9,2,6,5]
	
	it "should sort an unsorted array" do
		sort.bubble_sort(bubbleSortArray).should == [1,1,2,3,4,5,5,6,9]
	end

	
	insertionSortArray = [3,1,4,1,5,9,2,6,5]


	it "should sort an unsorted array" do
		sort.insertion_sort(insertionSortArray).should == [1,1,2,3,4,5,5,6,9]
	end

	
	mergeSortArray = [3,1,4,1,5,9,2,6,5]


	it "should sort an unsorted array" do
		sort.merge_sort(mergeSortArray).should == [1,1,2,3,4,5,5,6,9]
	end

	quickSortArray = [3,1,4,1,5,9,2,6,5]


	it "should sort an unsorted array" do
		sort.merge_sort(quickSortArray).should == [1,1,2,3,4,5,5,6,9]
	end


end



