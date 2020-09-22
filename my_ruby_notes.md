# My Ruby Notes

*Note: These notes are also based on [Why's Poignant Guide to Ruby](https://poignant.guide/book/chapter-2.html) and the [Free Code Camp Intro to Ruby](https://youtu.be/t_ispmWmdjY), among other YouTube videos.*

### Objects

**([see full documentation](https://ruby-doc.org/core-2.7.1/Object.html))**

**| [Vid 1](https://youtu.be/Dji9ALCgfpM?t=1771)  | 
[Vid 2](https://youtu.be/t_ispmWmdjY?t=11671) |**

Ruby is an object-oriented programming language which means programming in Ruby often involves manipulating objects.  In fact almost everything in Ruby is an object which can be manuipulated or acted upon.

Objects are data with functions attached to them.  When attached to objects, those functions are also called “methods”, and they give objects capabilities - the ability to "do things".   Methods can be chained (called 'method chaining'), which can be thought of like water cascading down several levels of rocks (ie:  `Object.method.method.method.method`).  Each method pipes the output to the next method as it transforms the data from method to method.

You can model real world objects (ie. phone, book, mastercard, etc) in Ruby using “Classes”.  Each class can only inherit one other class’ attributes, but you can add many modules to each object.

Every object has attributes which are called “Instance Variables”.  An Attribute is a piece of data associated with an object, or a characteristic of the object. 

Dot notation is used to access attributes and methods from objects.

### Classes

**([see full documentation](https://ruby-doc.org/core-2.7.1/Class.html))**

- Use the `Class` keyword to define the class.
- Use the special `initialize` method to define the behaviour of `new`
- Use an Attribute accessor (`attr_accessor`) to allow the getting and setting of attributes. 

![Class Image](https://softcover.s3.amazonaws.com/636/learn_enough_ruby/images/figures/content_attribute.png)

- Superclass:  used to investigate the class hierarchy.  Can keep calling superclass to work up through the hierarchy.  (ex:  String --> Object --> BasicObject)

- Inheritance:  use `<` operator (ex: `Class Phrase < String`)

### Modules

**([see full documentation](https://ruby-doc.org/core-2.7.1/Module.html))**

Ruby modules give us a way to factor out common functionality and then mix it in to multiple classes.

Modules are one of the most powerful features in Ruby, and are used heavily.

[Vid 1](https://youtu.be/Dji9ALCgfpM?t=2063)

Polymorphism

Duck typing.

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
- Ruby uses `snake_casing` as default, `CamelCasing` for certain things like defining Classes


### Functions

- Ruby has 'implict' returns, so there isn't a need to write 'return' within Ruby functions.  They all return something.

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

### Blocks

There are 2 types of blocks in ruby:  

1. Do/end
```
(1..5).each do |i|
  puts 2**i
end
```
2. Curly braces {}

`(1..5).each { |i| puts 2**i }`

In functional programming, there are many different methods that are useful with blocks.

Yield: a characteristic keyword that is associated with blocks. Every function in Ruby can take a block as an argument.  ([see this article on yield](https://ruby-doc.org/docs/Einfuhrung_in_Ruby/chp_04/iterators.html))

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

### Functional Programming

**([see full documentation: Enumerable Module](https://ruby-doc.org/core-2.7.1/Enumerable.html))**

Mapping: 

```
[1,2,3,4].map { |n| n*n }
=> [1,4,9,16]

["JOHN", "ALICE"].map { |name| name.downcase }
=> [john,alice]
```
"Symbol to proc" mapping format (shorter)
```
["JOHN", "ALICE"].map(&:downcase)
=> [john,alice]
```
Reduce:

```
numbers = 1..10
numbers.reduce { |do total, n| total += n }
=> 55
```
Note: these methods have aliases (ex: reduce => inject, map => collect, select => find_all)


### Test Driven Development

- 

### Creating a Gem

- The 'Bundler' gem allows us to create a skeleton framework for a new gem using the command: `bundle gem`
  - When you run this command, Bundler will ask you if you want a testing framework (rspec, minitest), and if you want a license and a code of conduct.
  - Bundler creates a set of files and initializes a git repository.
  


