# Neil Patel
# CS 1632; Software Quality Assurance
# Professor Bill Laboon
# Deliverable 2; CitySim9006

# Implementation of the doOnce method

require 'minitest/autorun'
require_relative 'Driver'

class Do_Once_test < Minitest::Test

# UNIT TESTS FOR METHOD doOnce_test(driver, option, id)
# Equivalence classes:
# driver.location = "Cathedral" && option = 0 -> returns "Monroeville"
# driver.location = "Cathedral" && option = 1 -> returns "Museum"

# driver.location = "Hillman" && option = 0 -> returns "Downtown"
# driver.location = "Hillman" && option = 1 -> returns "Hospital"

# driver.location = "Museum" && option = 0 -> returns "Cathedral"
# driver.location = "Musem" && option = 1 -> returns "Hillman"

# driver.location = "Hospital" && option = 0 -> returns "Cathedral"
# driver.location = "Hospital" && option = 1 -> returns "Hillman"


#If the driver is at the Cathedral and Option is 0, the return should be Monroeville
def test_doOnce_cathedral_zero_Choice
	d = Minitest::Mock::new "Driver"
	def d.location; "Cathedral";
	end
	def d.location=(n); n;
	end
	assert_equal "Monroeville", do_once(d,0,0)
end

#If the driver is at the Cathedral and Option is 1, the return should be Museum
def test_doOnce_cathedral_one_Choice
	d = Minitest::Mock::new "Driver"
	def d.location; "Cathedral";
	end
	def d.location=(n); n;
	end
	assert_equal "Museum", do_once(d,1,0)
end

#If the driver is at the Hillman and Option is 0, the return should be Downtown
def test_doOnce_hillman_zero_Choice
	d = Minitest::Mock::new "Driver"
	def d.location; "Hillman";
	end
	def d.location=(n); n;
	end
	assert_equal "Downtown", do_once(d,0,0)
end

#If the driver is at the Hillman and Option is 1, the return should be Hospital
def test_doOnce_hillman_one_Choice
	d = Minitest::Mock::new "Driver"
	def d.location; "Hillman";
	end
	def d.location=(n); n;
	end
	assert_equal "Hospital", do_once(d,1,0)
end


#If the driver is at the Museum and Option is 0, the return should be Cathedral
def test_doOnce_Museum_zero_Choice
	d = Minitest::Mock::new "Driver"
	def d.location; "Museum";
	end
	def d.location=(n); n;
	end
	assert_equal "Cathedral", do_once(d,0,0)
end

#If the driver is at the Museum and Option is 1, the return should be HIllman
def test_doOnce_Museum_one_Choice
	d = Minitest::Mock::new "Driver"
	def d.location; "Museum";
	end
	def d.location=(n); n;
	end
	assert_equal "Hillman", do_once(d,1,0)
end


#If the driver is at the Hospital and Option is 0, the return should be Cathedral
def test_doOnce_hospital_zero_Choice
	d = Minitest::Mock::new "Driver"
	def d.location; "Hospital";
	end
	def d.location=(n); n;
	end
	assert_equal "Cathedral", do_once(d,0,0)
end

#If the driver is at the Hospital and Option is 1, the return should be Hillman
def test_doOnce_hospital_one_Choice
	d = Minitest::Mock::new "Driver"
	def d.location; "Hospital";
	end
	def d.location=(n); n;
	end
	assert_equal "Hillman", do_once(d,1,0)
end

end
