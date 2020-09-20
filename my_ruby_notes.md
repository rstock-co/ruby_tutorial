# My Ruby Notes

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


### Objects

**| [Vid 1](https://youtu.be/Dji9ALCgfpM?t=1771)  | 
[Vid 2](https://youtu.be/t_ispmWmdjY?t=11671) |**

Ruby is an object oriented programming language which means Ruby often involves manipulating objects.  

Objects are data with operations called functions attached to them. You can model real world objects (ie. phone, book, mastercard, etc) in Ruby using “Classes”.
Every object has attributes which are called “Instance Variables”, and capabilities which are called “Methods”

Each class can only inherit one other class’ attributes.

When attached to objects, those functions are also called “methods”.

An Attribute is a piece of data associated with an object. 

Dot notation is used to access attributes and methods from objects.

### Modules

[Vid 1](https://youtu.be/Dji9ALCgfpM?t=2063)

Polymorphism

Duck typing.