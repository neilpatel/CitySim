# Neil Patel
# CS 1632; Software Quality Assurance
# Professor Bill Laboon
# Deliverable 2; CitySim9006

#Implementation of Class CitySim9006 Main

require_relative 'Driver'

## >> Begin the Execution <<
raise "Please enter a valid seed to begin the game. " unless ARGV.count == 1

#Convert the arg value to an integer
seed = ARGV[0].to_i


#Conditional to test if the arg value is an integer or something else
#If it is not an integer, set the seed value to 0. 
if not seed.is_a? Integer
	seed = 0
end

# Set @param prng to the randomly generated seed value
prng = Random::new(seed)


## >> Take the randomly generated prng value and establish a starting location
locationID1 = prng.rand(4)
locationID2 = prng.rand(4)
locationID3 = prng.rand(4)
locationID4 = prng.rand(4)
locationID5 = prng.rand(4)

## >> Define the starting locations
location_1 = startingLocation(locationID1)
location_2 = startingLocation(locationID2)
location_3 = startingLocation(locationID3)
location_4 = startingLocation(locationID4)
location_5 = startingLocation(locationID5)

## >> Establish the necessary driver objects
driver1 = Driver.new(location_1)
driver2 = Driver.new(location_2)
driver3 = Driver.new(location_3)
driver4 = Driver.new(location_4)
driver5 = Driver.new(location_5)


## Pass in necessary arguments for each instance. 
## Conditional and checking if the driver is heading to either Downtown or Monroeville
## Executed this way because methods are abstracted in a way where testing each abstracted methods would be quite exhaustive
while driver1.location != "Downtown" and driver1.location != "Monroeville"
	id = 1
	checkItems(driver1)
	option = prng.rand(0..1)
	do_once(driver1, option, id)
	end
	printItems(driver1, id)
		
while driver2.location != "Downtown" and driver2.location != "Monroeville"
	id = 2
	checkItems(driver2)
	option = prng.rand(0..1)
	do_once(driver2, option, id)
	end
	printItems(driver2, id)

while driver3.location != "Downtown" and driver3.location != "Monroeville"
	id = 3
	checkItems(driver3)
	option = prng.rand(0..1)
	do_once(driver3, option, id)
	end
	printItems(driver3, id)
	
	
while driver4.location != "Downtown" and driver4.location != "Monroeville"
	id = 4
	checkItems(driver4)
	option = prng.rand(0..1)
	do_once(driver4, option, id)
	end
	printItems(driver4, id)
	
	
while driver5.location != "Downtown" and driver5.location != "Monroeville"
	id = 5
	checkItems(driver5)
	option = prng.rand(0..1)
	do_once(driver5, option, id)
	end
	printItems(driver5, id)
