# Neil Patel
# CS 1632; Software Quality Assurance
# Professor Bill Laboon
# Deliverable 2; CitySim9006

# Implementation of the Check Items method

require 'minitest/autorun'
require_relative 'Driver'

class Check_Items_test < Minitest::Test

# UNIT TESTS FOR METHOD checkItems(x)
# Equivalence classes:
# x.location = "Cathedral" -> returns x.numberOfClasses * 2
# x.location = "Hillman" -> returns x.numberOfBooks + 1
# x.location = "Cathedral" -> returns x.numberOfDinoToys + 1
# x.location = "All Other Cases" -> returns nil


### TEST CATHEDRAL ###

# Testing an invalid case, the default class count is atleast 1.
# No case can exist where classes will be 0 because 1*2 will never be 0.
# 0 Will be returned if 0 is passed in because 0*2 is 0
# EDGE CASE

#Case where the driver is at Cathedral and has zero classes. This should return 0. 
def test_Cathedral_zero_classes
	d = Minitest::Mock:: new "Driver"
	def d.location; "Cathedral"; 
	end
	d.expect :numberOfClasses, 0
	def d.numberOfClasses=(n); n;
	end
	assert_equal checkItems(d), 0
end

#Case where Cathedral has one class, the times 2 should return 2 classes
def test_Cathedral_one_class
	d = Minitest::Mock:: new "Driver"
	def d.location; "Cathedral"; 
	end
	d.expect :numberOfClasses, 1
	def d.numberOfClasses=(n); n;
	end
	assert_equal checkItems(d), 2
end

#Case where Cathedral has four classes and the method should return 8
def test_Cathedral_four_classes
	d = Minitest::Mock:: new "Driver"
	def d.location; "Cathedral"; 
	end
	d.expect :numberOfClasses, 4
	def d.numberOfClasses=(n); n;
	end
	assert_equal checkItems(d), 8
end


### TEST HILLMAN ###

#Case where the driver is at hillman and has zero books. The return value should be 1
def test_Hillman_zero_books
	d = Minitest::Mock::new "Driver"
	def d.location; "Hillman";
	end
	d.expect :numberOfBooks, 0
	def d.numberOfBooks=(n); n;
	end
	assert_equal checkItems(d), 1
end

#Case where the driver is at hillman and has one book. The return value should be 2.
def test_Hillman_one_book
	d = Minitest::Mock::new "Driver"
	def d.location; "Hillman";
	end
	d.expect :numberOfBooks, 1
	def d.numberOfBooks=(n); n;
	end
	assert_equal checkItems(d), 2
end

#Case where the driver is at hillman and has four books. The return value should be 5.
def test_Hillman_four_books
	d = Minitest::Mock::new "Driver"
	def d.location; "Hillman";
	end
	d.expect :numberOfBooks, 4
	def d.numberOfBooks=(n); n;
	end
	assert_equal checkItems(d), 5
end


### TEST MUSEUM ###

#Case where the driver is at Museum and has zero dino toys. The return value should be 1. 
def test_Museum_zero_toys
	d = Minitest::Mock::new "Driver"
	def d.location; "Museum";
	end
	d.expect :numberOfDinoToys, 0
	def d.numberOfDinoToys=(n); n;
	end
	assert_equal checkItems(d), 1
end

#Case where the driver is at Museum and has one dino toy. The return value should be 2. 
def test_Museum_one_toy
	d = Minitest::Mock::new "Driver"
	def d.location; "Museum";
	end
	d.expect :numberOfDinoToys, 1
	def d.numberOfDinoToys=(n); n;
	end
	assert_equal checkItems(d), 2
end

#Case where the driver is at Museum and has four dino toys. The return value should be 5. 
def test_Museum_four_toys
	d = Minitest::Mock::new "Driver"
	def d.location; "Museum";
	end
	d.expect :numberOfDinoToys, 4
	def d.numberOfDinoToys=(n); n;
	end
	assert_equal checkItems(d), 5
end

### TEST ANY INVALID CASES ###
#EDGE CASE

def test_invalid_location
	d = Minitest::Mock:: new "Driver"
	def d.location; "All Other Cases";
	end
	d.expect :numberOfClasses, 0
	def d. numberOfClasses=(n); n;
	end
	assert_nil checkItems(d)
	end
end