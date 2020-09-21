require 'sinatra'
    get '/' do
      DAYNAMES = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
      dayname = DAYNAMES[Time.now.wday]
      "hello world! Happy #{dayname}"
    end
