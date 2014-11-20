require "rational"

print "This is a fraction computation calculator. What is your numerator? "; num1 = gets.to_i
print "What is your denominator? "; den1 = gets.to_i
print "Would you like to divide (1), multiply (2), add (3), or subtract (4) this fraction? "; comp = gets.to_i
if comp == 1 
	print "What is your second fraction's numerator? "; num2 = gets.to_i
	print "What is your second fraction's denominator? "; den2 = gets.to_i
	dummyNum = den2
	dummyDen = num2
	quotientNum = num1*dummyNum
	quotientDen = den1*dummyDen
	gcd = quotientNum.gcd(quotientDen)
	print "The answer to #{num1}/#{den1} divided by #{num2}/#{den2} is #{quotientNum}/#{quotientDen}."
elsif comp == 2
	print "What is your second fraction's numerator? "; num2 = gets.to_i
	print "What is your second fraction's denominator? "; den2 = gets.to_i
	dummyNum = den2
	dummyDen = num2
	productNum = num1*dummyDen
	productDen = den1*dummyNum
	print "The answer to #{num1}/#{den1} multiplied by #{num2}/#{den2} is #{quotientNum}/#{quotientDen}."
elsif comp == 3
	print "What is your second fraction's numerator? "; num2 = gets.to_i
	print "What is your second fraction's denominator? "; den2 = gets.to_i
	total_num = num1 + num2
	total_den = den1.gcd(den2)
	simple = total_num.gcd(total_den)
	numSimple = total_num / simple
	denSimple = total_den / simple
	simpleFraction = [numSimple , denSimple]
	print "The answer to #{num1}/#{den1} added to #{num2}/#{den2} is #{simpleFraction}."
elsif comp == 4
	print "What is your second fraction's numerator? "; num2 = gets.to_i
	print "What is your second fraction's denominator? "; den2 = gets.to_i
	total_num = num1 -  num2
	total_den = den1.gcd(den2)
	simple = total_num.gcd(total_den)
	numSimple = total_num / simple
	denSimple = total_den / simple
	simpleFraction = [numSimple , denSimple]
	print "The answer to #{num1}/#{den1} subtracted by #{num2}/#{den2} is #{simpleFraction}."
else	
print "You did not chose a valid option."
end
