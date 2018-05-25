# Neil Patel
# CS 1632; Software Quality Assurance
# Professor Bill Laboon
# Deliverable 2; CitySim

# Implementation of Class Driver

class Driver
	def initialize(location)
		@location = location
		@numberOfDinoToys = 0
		@numberOfBooks = 0
		@numberOfClasses = 1
	end


    
## >>> "Set Methods" <<<< 
	 
	def location=(location)
		@location = location
	end

	def numberOfClasses=(numberOfClasses)
		@numberOfClasses = numberOfClasses 
	end 

	def numberOfBooks=(numberOfBooks)
		@numberOfBooks = numberOfBooks
	end


	def numberOfDinoToys=(numberOfDinoToys)
		@numberOfDinoToys = numberOfDinoToys
	end

## >>> "Get Methods" <<<<

	def location
		@location
	end

	def numberOfClasses 
		@numberOfClasses
	end

	def numberOfBooks
		@numberOfBooks
	end

	def numberOfDinoToys
		@numberOfDinoToys
	end
end

## >>> Conditional to check for the current number of items
	def checkItems(driver)
		if driver.location == "Cathedral"
			driver.numberOfClasses = driver.numberOfClasses * 2
		elsif driver.location == "Hillman"
			driver.numberOfBooks = driver.numberOfBooks + 1
		elsif driver.location == "Museum"
			driver.numberOfDinoToys = driver.numberOfDinoToys + 1
		end
	end
	
	
## >>> Conditional for the starting location
	def startingLocation(locationID)
		if locationID == 0
			location = "Hospital"
		elsif locationID == 1
			location = "Cathedral"
		elsif locationID == 2
			location = "Hillman"
		elsif locationID == 3
			location = "Museum"
		else
			location = nil
		end
			location
	end
	
## >>> Printing the list of items out 
	def printItems(driver, id)
		if driver.numberOfBooks != 1 then puts "Driver #{id} obtained #{driver.numberOfBooks} books!"
		else puts "Driver #{id} obtained #{driver.numberOfBooks} book!"
		end
		
		if driver.numberOfDinoToys != 1 then puts "Driver #{id} obtained #{driver.numberOfDinoToys} dinosaur toys!"
		else puts "Driver #{id} obtained #{driver.numberOfDinoToys} dinosaur toy!"
		end	
		
		if driver.numberOfClasses != 1 then puts "Driver #{id} attended #{driver.numberOfClasses} classes!"
		else puts "Driver #{id} attended #{driver.numberOfClasses} class!"
		end	
	end
	
## >> This method will iterate through the locations once. 
	def do_once(driver, option, id)
		if driver.location == "Cathedral"
			if option == 0
				puts "Driver #{id} heading from Cathedral to Monroeville via Fourth Ave."
				driver.location = "Monroeville"
			else
				puts "Driver #{id} heading from Cathedral to Museum via Bar St."
				driver.location = "Museum"			
			end
		elsif driver.location == "Hillman"
			if option == 0 
				puts "Driver #{id} heading from Hillman to Downtown via Fifth Ave."
				driver.location = "Downtown"
			else
				puts "Driver #{id} heading from Hillman to Hospital via Foo St."
				driver.location = "Hospital"
			end
		elsif driver.location == "Museum"
			if option == 0
				puts "Driver #{id} heading from Museum to Cathedral via Bar St."
				driver.location = "Cathedral"
			else
				puts "Driver #{id} heading from Museum to Hillman via Fifth Ave."
				driver.location = "Hillman"
			end
		elsif driver.location == "Hospital"
			if option == 0
				puts "Driver #{id} heading from Hospital to Cathedral via Fourth Ave."
				driver.location = "Cathedral"
			else
				puts "Driver #{id} heading from Hospital to Hillman via Fourth Ave."
				driver.location = "Hillman"
			end
		end
	end
