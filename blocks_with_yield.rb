# Example 1
def sandwich
  puts "top bread"
  yield
  puts "bottom bread"
end

sandwich do
  puts "roast beef, lettuce, and tomato"
end

# Example 2

def tag(tagname, text)
  html = "<#{tagname}>#{text}</#{tagname}>"
  yield html
end

# Wrap some text in a paragraph tag.
tag("p", "Lorem ipsum dolor sit amet") do |markup|
  puts markup
end
