:green # this is a symbol
:green.class # returns Symbol

'green' # a string
'green'.class # returns String

:geen.object_id # always the same id for green
'green'.object_id # different obj id for each string

'green' == :green #Symbols are not strings

# to convert a symbol to a string
:green.to_s

# to convert a string to a symbol
'green'.to_sym

# all the methods a symbol has
Symbol.instance_methods

# Strings Vs. Symbols
# Symbols : to name or identify something in the code. Eg. attr_reader :name
# Strings : do text processing. Eg. puts "#{name.capitalize} has a health of 90"