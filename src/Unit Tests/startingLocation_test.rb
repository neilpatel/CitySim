# Neil Patel
# CS 1632; Software Quality Assurance
# Professor Bill Laboon
# Deliverable 2; CitySim9006

# Unit Test for the startingLocation Method in Driver File
require 'minitest/autorun'
require_relative 'Driver'

class Start_Location_Test < Minitest::Test

# UNIT TESTS FOR METHOD startingLocation(x)
# Equivalence classes:
# x= 0 -> returns location = "Hospital"
# x= 1 -> returns location = "Cathedral"
# x= 2 -> returns location = "Hillman"
# x= 3 -> returns location = "Museum" 
# x= (all other values) -> returns location = nil


# Checking to see if the argument zero is passed in.
# Expected Value: "Hospital"
def test_zero_value
	assert_equal "Hospital", startingLocation(0)
end

# Checking to see if the argument one is passed in.
# Expected Value: "Cathedral"	
def test_one_value
	assert_equal "Cathedral", startingLocation(1)
end

# Checking to see if the argument two is passed in.
# Expected Value: "Hillman"
def test_two_value
	assert_equal "Hillman", startingLocation(2)
end

# Checking to see if the argument three is passed in.
# Expected Value: "Museum"
def test_three_value
	assert_equal "Museum", startingLocation(3)
end

# Checking to see if the user passes in an invalid value.
# Expected Return Value: nil
# EDGE CASE
def test_all_else_value
	assert_nil startingLocation(10)
end	

	
end 


