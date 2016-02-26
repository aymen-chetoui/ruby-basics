letters = {"c" => 3, "e" => 1, "l" => 1, "n" => 1, "t" => 1, "x" => 8, "y" => 4}

puts letters
score = 0
"excellently".each_char {|c| score = score + letters[c]}
puts score

point_totals = Hash.new(0)

"excellently".each_char {|c| point_totals[c] += letters[c]}
puts point_totals
puts point_totals.values.reduce(0, :+)