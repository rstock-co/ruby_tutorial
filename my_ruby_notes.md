# My Ruby Notes

*Note: These notes are also based on [Why's Poignant Guide to Ruby](https://poignant.guide/book/chapter-2.html) and the [Free Code Camp Intro to Ruby](https://youtu.be/t_ispmWmdjY), among other YouTube videos.*

### Objects

**| [Vid 1](https://youtu.be/Dji9ALCgfpM?t=1771)  | 
[Vid 2](https://youtu.be/t_ispmWmdjY?t=11671) |**

Ruby is an object-oriented programming language which means programming in Ruby often involves manipulating objects.  In fact almost everything in Ruby is an object which can be manuipulated or acted upon.

Objects are data with functions attached to them.  When attached to objects, those functions are also called “methods”, and they give objects capabilities - the ability to "do things".   Methods can be chained (called 'method chaining'), which can be thought of like water cascading down several levels of rocks (ie:  `Object.method.method.method.method`).  Each method pipes the output to the next method as it transforms the data from method to method.

You can model real world objects (ie. phone, book, mastercard, etc) in Ruby using “Classes”.  Each class can only inherit one other class’ attributes, but you can add many modules to each object.

Every object has attributes which are called “Instance Variables”.  An Attribute is a piece of data associated with an object, or a characteristic of the object. 

Dot notation is used to access attributes and methods from objects.

### Modules

[Vid 1](https://youtu.be/Dji9ALCgfpM?t=2063)

Polymorphism

Duck typing.

### Functions

- Ruby has 'implict' returns, so there isn't a need to write 'return' within Ruby functions.  They all return something.

### Ruby Enviroments

- It's common practice to use the REPL (irb) to test code, before copying it into a ruby file.
- 

### Syntax

- In general Ruby doesn't have as many symbols as JavaScript.
  - Example 1: with code blocks such as an "if statement" you don't need the round brackets around the conditional statement that "if" is evaluating.  Also, instead of curly braces wrapping the code, simply use the word "end" to end the block).
  
```
      if password.length <= 7
        puts "Password is too short"
      else
        puts "Password is good"
      end 
      
      # in Ruby, for such a simple statement, you could even shorten it to:
      
      puts "Password is to short" unless password.length > 7
```

### Looping

```
Javascript for loop:

  for (var i = 0; i < 5; i++) {
    code
  }

Ruby for loop:

  for i in 0..4 do 
    code
  end
        
```

### Strings

append to end of a string:
`s+=`




### Arrays

**[see full documentation](https://ruby-doc.org/core-2.7.0/Array.html)**

Splitting arrays

`a = a.split  OR add character to split by =>  a.split(",")`

Arrays in ruby can contain more than one different data type 

`a = [foo, 42, true])`

Access last element in array using 

`a[-1], a.last, or a[array.length -1]` 

Slicing arrays

`a = [34, 40, 29, 71, 20] => slice using: a[1..3] => result: [40, 29, 71]`

Create array from sequence

`(1..10).to_a   =>  [1,2,3,4,5,6,7,8,9,10]
('a'..'z').to_a =>  [27 separate letters of alphabet]`

Push using shovel operator (<<)

`a << ant << bat << cat
a = [ant, bat, cat]`

Iteration

`a.each do |element|
   code to manipulate element
 end`

### Math

**[see full documentation](https://ruby-doc.org/core-2.7.0/Math.html)**

Access libraries in-formula:  `Math.cos(2*Math::PI)`

Exponents:  `2**3 = 8` 

Logrithm: note in ruby the log(base) is e, not 10.

### Time

**[see full documentation](https://ruby-doc.org/core-2.7.0/Time.html)**

Get current time:  `now = Time.now.utc  => now.year, now.month, now.day, now.hour`

Create a time: `moon_landing = Time.utc(1969, 7, 20, 20, 17, 40)  => July 20, 1969 8:17:40 pm`

Math:  `now - moon_landing = 15502038405` represents the number of seconds that has passed.

Get day of week:  `moon_landing.wday`   (0 is Sunday)

Convert to string:  
```
DAYNAMES = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
DAYNAMES[moon_landing.wday] => "Sunday"
```
### Regular Expressions

**| [see full documentation](https://ruby-doc.org/core-2.7.1/Regexp.html) | [Rubular editor](https://rubular.com) |**

Although these can be intricate, they are very powerful, and the time spent learning them is well spent.

Example: Zip code testing
```
\d{5}  # '\d'	= Any digit, 'a{5}' = Exactly 5 of a
zip_code = /\d{5}/ # wrap regexp in backslashes to search in text
address = "Beverly Hills 90210"
address.match(zip_code)  ==> evaluates to 'true'
address.scan(zip_code) ==> evaluates to '90210'
```
Combining regexp and array methods

`array = [ant, bat, cat]
array.split(/\s+/)   # splits by one or more whitespace characters (this is the default behaviour of split)`

### Hashes

**[see full documentation](https://ruby-doc.org/core-2.7.1/Hash.html)**

Hashes are used heavily in Ruby, especially in Ruby on Rails.

Hashes are also called 'associative arrays'. They are analogical to a dictionary, where there is a word (a 'key'), and a definition (a 'value'). 

```
# Defining a hash

user = {}
user["first_name"] = "Richard"  # "first_name" = key, "Richard" = value
user['last_name"] = "Stock"

OR

user = { "first_name" => "Richard, "last_name" => "Stock" }   # '=>' is called a 'hash rocket'
```

Note:  Ruby has a data type called "symbol" which is a string but only used for labelling things.

Example of a symbol: `:name`  Note that not all symbols are valid in defining symbols (use letters and numbers).

Define symbols as keys: 
```
user = { :name => "Richard Stock", :email => "rstock.co@gmail.com" }
user[:name] = "Richard Stock"

NOTE:  only within hashes, you can also do 
user = { name: "Richard Stock", email: "rstock.co@gmail.com" }
```

Nested Hashes:
```
params = {}
params[:user] = { name: "Richard Stock", email: "rstock.co@gmail.com" }
params[:user][:name] = "Richard Stock"
```
Iterate through hash:
```
user.each do |key, value|
  puts "Key #{key.inspect} has value #{value.inspect}"   (note the shorthand for this would be 'p' which would replace 'puts' and '.inspect')
end
```
