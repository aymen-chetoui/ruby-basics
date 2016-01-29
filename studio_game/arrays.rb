books = ['Blink', 'Freakonomics', 'Outliers']
#books = %w(Blink Freakonomics Outliers )
puts books.size
puts books[1]
puts books[3]

newbooks = []
#newbooks = Arry.new

newbooks.push('Blink')
newbooks.push('Freakonomics')
newbooks.push('Outliers')
puts newbooks
newbooks.pop
newbooks.pop
newbooks.pop
puts newbooks.empty?

# ri Arry.join
puts books.join(' and ')

# sort and shuffle order
puts books.sort
puts books.shuffle
