require 'sinatra'
require './day'

# Returns the day of the week for the given Time object.

get '/' do
  "hello world! Happy #{day_of_the_week(Time.now)}"
end
