# Project funding program

fund = 1000
project = "ABC"

puts "Project #{project} has $#{fund} in funding."

project1 = 'ABC'
project2 = 'DEF'
project3 = 'GHI'
puts "Projects : \n\t#{project1}\n\t#{project2}\n\t#{project3}"

fund1 = 2000
fund2 = 1500
fund3 = 3500

puts "#{project1.upcase} has a fund of #{fund1}.".center(50,'-')

puts "#{project2.capitalize.ljust(20,'_')} #{fund2} fund"

puts "#{project3.center(8,'$')} has a fund of #{fund3}."
