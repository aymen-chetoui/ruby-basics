# def movie_listing(title = 'default value', rank = title.length)
#   current_time = Time.now
#   today = current_time.strftime("%A")
#   "Movie: #{title.capitalize} has a rank of #{rank} as of #{today}."
#   #10
# end

# A method shold do one specific thing

def weekday
  current_time = Time.now
  current_time.strftime("%A")
end
  
def movie_listing(title = 'default value', rank = title.length)
  "#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}."
end

# Not accessible  
# puts today
# puts title

puts movie_listing('goonies',10)

a_title = "scarface"
puts movie_listing(a_title,5)
puts movie_listing('up')

puts movie_listing