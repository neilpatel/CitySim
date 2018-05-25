# Neil Patel
# CS 1632; Software Quality Assurance
# Professor Bill Laboon
# Deliverable 2; CitySim

# Implementation of the PrintItems_test

require 'minitest/autorun'
require_relative 'Driver'

class Print_Items_test < Minitest::Test

# UNIT TESTS FOR METHOD printItems(driver, id)
# Equivalence classes:
# 1. driver.numberOfBooks, driver.numberOfDinoToys, driver.numberOfClasses set to 4 -> Returns the Plural form of respective items
# 2. driver.numberOfBooks, driver.numberOfDinoToys, driver.numberOfClasses set to 4, 4, 1, respectively -> Returns the Plural form of respective items EXCEPT Classes
# 3. driver.numberOfBooks, driver.numberOfDinoToys, driver.numberOfClasses set to 4, 1, 4, respectively -> Returns the Plural form of respective items EXCEPT Toys
# 4. driver.numberOfBooks, driver.numberOfDinoToys, driver.numberOfClasses set to 4, 1, 1, respectively -> Returns the Plural form of respective items followed by the singular form of respective items
# 5. driver.numberOfBooks, driver.numberOfDinoToys, driver.numberOfClasses set to 1, 4, 4, respectively -> Returns the Plural form of respective items EXCEPT Books
# 6. driver.numberOfBooks, driver.numberOfDinoToys, driver.numberOfClasses set to 1, 4, 1, respectively -> Returns the Singular form, plural form, followed by singular form of respective items. 
# 7. driver.numberOfBooks, driver.numberOfDinoToys, driver.numberOfClasses set to 1, 1, 4, respectively -> Returns the Singular form, singular form, follwed by plural form of respective items.
# 8. driver.numberOfBooks, driver.numberOfDinoToys, driver.numberOfClasses set to 1, respectively -> Returns the Singular form of all items

# Note: When referred to items, I mean Books, Dinosaur Toys, and Classes

#FAILURE CASE -> The selected option is all other cases EXCEPT 0 and 1 -> Return nil

#1. When all items do not equal 1
def test_printItems_four
	d = Minitest::Mock::new "Driver"
	d.expect :numberOfBooks, 4
	d.expect :numberOfBooks, 4
	d.expect :numberOfDinoToys, 4
	d.expect :numberOfDinoToys, 4
	d.expect :numberOfClasses, 4
	d.expect :numberOfClasses, 4
	assert_output ("Driver 1 obtained 4 books!\nDriver 1 obtained 4 dinosaur toys!\nDriver 1 attended 4 classes!\n") {printItems(d,1)};
end

#2. When there is only one class, but four Dinosaur Toys and Books. 
def test_printItems_oneClass
	d = Minitest::Mock::new "Driver"
	d.expect :numberOfBooks, 4
	d.expect :numberOfBooks, 4
	d.expect :numberOfDinoToys, 4
	d.expect :numberOfDinoToys, 4
	d.expect :numberOfClasses, 1
	d.expect :numberOfClasses, 1
	assert_output ("Driver 1 obtained 4 books!\nDriver 1 obtained 4 dinosaur toys!\nDriver 1 attended 1 class!\n") {printItems(d,1)};
end

#3. When Books and Classes are plural and there is 1 toy.

def test_printItems_oneToy
	d = Minitest::Mock::new "Driver"
	d.expect :numberOfBooks, 4
	d.expect :numberOfBooks, 4
	d.expect :numberOfDinoToys, 1
	d.expect :numberOfDinoToys, 1
	d.expect :numberOfClasses, 4
	d.expect :numberOfClasses, 4
	assert_output ("Driver 1 obtained 4 books!\nDriver 1 obtained 1 dinosaur toy!\nDriver 1 attended 4 classes!\n") {printItems(d,1)};
end

#4. When Classes and Toys are singular, but Books are plural
	
def test_printItems_oneClass_OneToy
	d = Minitest::Mock::new "Driver"
	d.expect :numberOfBooks, 4
	d.expect :numberOfBooks, 4
	d.expect :numberOfDinoToys, 1
	d.expect :numberOfDinoToys, 1
	d.expect :numberOfClasses, 1
	d.expect :numberOfClasses, 1
	assert_output ("Driver 1 obtained 4 books!\nDriver 1 obtained 1 dinosaur toy!\nDriver 1 attended 1 class!\n") {printItems(d,1)};
end

#5. When Classes and Toys are plural, but Book is singular

def test_printItems_oneBook
	d = Minitest::Mock::new "Driver"
	d.expect :numberOfBooks, 1
	d.expect :numberOfBooks, 1
	d.expect :numberOfDinoToys, 4
	d.expect :numberOfDinoToys, 4
	d.expect :numberOfClasses, 4
	d.expect :numberOfClasses, 4
	assert_output ("Driver 1 obtained 1 book!\nDriver 1 obtained 4 dinosaur toys!\nDriver 1 attended 4 classes!\n") {printItems(d,1)};
end

#6. When Books and Classes are singular, but Toys are plural

def test_printItems_oneBook_oneClass
	d = Minitest::Mock::new "Driver"
	d.expect :numberOfBooks, 1
	d.expect :numberOfBooks, 1
	d.expect :numberOfDinoToys, 4
	d.expect :numberOfDinoToys, 4
	d.expect :numberOfClasses, 1
	d.expect :numberOfClasses, 1
	assert_output ("Driver 1 obtained 1 book!\nDriver 1 obtained 4 dinosaur toys!\nDriver 1 attended 1 class!\n") {printItems(d,1)};
end

#7. When Books and Toys are singular, but Classes are Plural

def test_printItems_oneBook_oneToy
	d = Minitest::Mock::new "Driver"
	d.expect :numberOfBooks, 1
	d.expect :numberOfBooks, 1
	d.expect :numberOfDinoToys, 1
	d.expect :numberOfDinoToys, 1
	d.expect :numberOfClasses, 4
	d.expect :numberOfClasses, 4
	assert_output ("Driver 1 obtained 1 book!\nDriver 1 obtained 1 dinosaur toy!\nDriver 1 attended 4 classes!\n") {printItems(d,1)};
end

#8. When all the items are singular

def test_printItems_Singular
	d = Minitest::Mock::new "Driver"
	d.expect :numberOfBooks, 1
	d.expect :numberOfBooks, 1
	d.expect :numberOfDinoToys, 1
	d.expect :numberOfDinoToys, 1
	d.expect :numberOfClasses, 1
	d.expect :numberOfClasses, 1
	assert_output ("Driver 1 obtained 1 book!\nDriver 1 obtained 1 dinosaur toy!\nDriver 1 attended 1 class!\n") {printItems(d,1)};
end

	
end