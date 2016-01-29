# ## 1

# # def say_hello(name)
# #   puts "I'm #{name.capitalize} !"
# # end 

# # say_hello('larry')
# # say_hello('curly')
# # say_hello('moe')
# # say_hello('shemp')

# def say_hello(name)
#   "I'm #{name.capitalize} !"
# end

# puts say_hello('larry')
# puts say_hello('curly')
# puts say_hello('moe')
# puts say_hello('shemp')

# #puts name

# # name is a private parameter 

# 2

# def say_hello(name , health)
#   "I'm #{name.capitalize} with a health of #{health}."
# end

# puts say_hello("larry", 60)
# puts say_hello("curly", 125)
# puts say_hello("moe", 100)
# puts say_hello("shemp", 90)

# 3

def timenow
  Time.new.strftime('%H:%m:%S')
end

def say_hello(name , health = 100)
  "I'm #{name.capitalize} with a health of #{health} as of #{timenow}."
end

puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe")
puts say_hello("shemp", 90)