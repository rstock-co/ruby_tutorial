states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Returns a URL-friendly version of a string.
#  Example: "North Dakota" -> "north-dakota"

def urlify(string)
  string.downcase.split.join("-")
end

# urls: Imperative version

def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << urlify(state)
  end
  urls
end
p imperative_urls(states)

# urls: Functional version
def functional_urls(states)
  states.map { |state| urlify(state) }
end
p functional_urls(states)

# singles: Imperative version
def imperative_singles(states)
  singles = []
  states.each do |state|
    if state.split.length == 1
      singles << state
    end
  end
  singles
end
p imperative_singles(states)

# singles: Functional version
def functional_singles(states)
  states.select { |state| state.split.length == 1 }
end
p functional_singles(states)


numbers = 1..10

# sum: Imperative solution
def imperative_sum(numbers)
  total = 0
  numbers.each do |n|
    total += n
  end
  total
end
puts imperative_sum(numbers)

# sum: Functional solution
def functional_sum(numbers)
  numbers.reduce { |total, n| total + n }
end
puts functional_sum(numbers)

# lengths: Imperative version
def imperative_lengths(states)
  lengths = {}
  states.each do |state|
    lengths[state] = state.length
  end
  lengths
end
puts imperative_lengths(states)
