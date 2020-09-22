# Ruby Tutorial

This repo is primarily based on [Michael Hartl's "Learn Enough Ruby to be Dangerous"](https://www.learnenough.com/courses) tutorial.  Below are the topics I touched on (see **"my_ruby_notes.md"** for more detailed notes)*

### Chapter 1:  Introduction to Ruby

- Learned the 4 environments for Ruby development:  
  - An interactive prompt with a Read-Evaluate-Print Loop (REPL) - type `irb` into terminal
  - Standalone Ruby files (.rb)
  - Shell scripts
  - Ruby web applications running in a web server
- Set up a web app using Sinatra and Heroku to publish "Hello, world" to the live web.

### Chapter 2: Strings
**([see full documentation](https://ruby-doc.org/core-2.7.0/String.html))**

- Comparisons, logic, etc
- String methods 
- Looping through strings, string index

### Chapter 3: Arrays
**([see full documentation](https://ruby-doc.org/core-2.7.0/Array.html))**

- Splitting
- Accessing elements
- Slicing
- Sort, reverse, push, pop, join
- Iterating through elements

### Chapter 4: Other Native Objects

- Math
- Time & Dates (+ updated web app to display "Hello, world! Happy [Monday]")
- Regular Expressions
- Hashes

### Chapter 5: Functions & Blocks

- Function definitions in a separate file (imported to another file using 'require')
- Method chaining
- Blocks (2 types:  (1) `{}`, (2) `do/end`)
- Yield

### Chapter 6: Functional Programming

- Enumerable Module
  - Mapping
  - Select
  - Reduce

### Chapter 7: Objects and Classes

- Created a new `Class` called "Phrase" and used it with file `palindrome.rb`
- Use `CamelCase` when defining Classes
- Using `self` within objects (same as `this` in JS)
- Inheritance and `superclass`
- Derived classes
- Modifying native objects (added our custom method `palindrome` to the native `String` class, and used `private` to exclude our `processed_content` method).  *This has been coined "Monkeypatching" and is somewhat controversial in the Ruby community, however it is a powerful technique that just needs to be used with care.*
- Modules (also called `mixins`)
  - Created a module called "Palindrome" so it could be added to the 'Integer' class as well as the 'String' class.

### Chapter 8: Testing and Test Driven Development

- Automated testing is one of the most important aspects of modern software development.
- Set up our system for automated testing (Section 8.1) by creating my **[own ruby gem](https://rubygems.org/gems/rstock_palindrome)** [(see source code)](https://github.com/rstock-co/rstock_palindrome)
- Wrote automated tests for the existing palindrome? functionality (Section 8.2).
- Wrote a failing test for the enhanced palindrome detector (red) (Section 8.3).
- Wrote (ugly) code to get the test passing (green) (Section 8.4).
- Refactored the code to make it prettier, while ensuring that the test suite stayed green (Section 8.5).


### Chapter 9: Shell Scripts

**| [see full documentation](https://ruby-doc.org/stdlib-2.5.1/libdoc/shell/rdoc/Shell.html) | [Enhanced Shell Scripting](https://www.devdungeon.com/content/enhanced-shell-scripting-ruby) |**

- Ruby Scripts for the Unix Shell (using first line: `#!/usr/bin/env ruby`)
- Wrote shell scripts for:
  - detect palindromes in files
  - detect palindromes in a live web page (involved reading content from live web URL's)
  - utility script that manipulates DOM outside of a web browser
